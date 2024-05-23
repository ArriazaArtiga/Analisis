$PBExportHeader$n_bcrypt.sru
$PBExportComments$Cryptography API: Next Generation (CNG)
forward
global type n_bcrypt from nonvisualobject
end type
type systemtime from structure within n_bcrypt
end type
type filetime from structure within n_bcrypt
end type
end forward

type systemtime from structure
	integer		wyear
	integer		wmonth
	integer		wdayofweek
	integer		wday
	integer		whour
	integer		wminute
	integer		wsecond
	integer		wmilliseconds
end type

type filetime from structure
	unsignedlong		dwlowdatetime
	unsignedlong		dwhighdatetime
end type

global type n_bcrypt from nonvisualobject autoinstantiate
end type

type prototypes
Function ulong GetLastError ( &
	) Library "kernel32.dll"

Function ulong FormatMessage( &
	ulong dwFlags, &
	ulong lpSource, &
	ulong dwMessageId, &
	ulong dwLanguageId, &
	Ref string lpBuffer, &
	ulong nSize, &
	ulong Arguments &
	) Library "kernel32.dll" Alias For "FormatMessageW"

Function longptr CreateFile ( &
	string lpFileName, &
	ulong dwDesiredAccess, &
	ulong dwShareMode, &
	ulong lpSecurityAttributes, &
	ulong dwCreationDisposition, &
	ulong dwFlagsAndAttributes, &
	longptr hTemplateFile &
	) Library "kernel32.dll" Alias For "CreateFileW"

Function boolean CloseHandle ( &
	longptr hObject &
	) Library "kernel32.dll"

Function boolean ReadFile ( &
	longptr hFile, &
	Ref blob lpBuffer, &
	ulong nNumberOfBytesToRead, &
	Ref ulong lpNumberOfBytesRead, &
	ulong lpOverlapped &
	) Library "kernel32.dll"

Function boolean WriteFile ( &
	longptr hFile, &
	blob lpBuffer, &
	ulong nNumberOfBytesToWrite, &
	Ref ulong lpNumberOfBytesWritten, &
	ulong lpOverlapped &
	) Library "kernel32.dll"

Function boolean TzSpecificLocalTimeToSystemTime ( &
	longptr lpTimeZoneInformation, &
	SYSTEMTIME lpLocalTime, &
	Ref SYSTEMTIME lpUniversalTime &
	) Library "kernel32.dll"

Function boolean CryptBinaryToString ( &
	blob pbBinary, &
	ulong cbBinary, &
	ulong dwFlags, &
	Ref string pszString, &
	Ref ulong pcchString &
	) Library "crypt32.dll" Alias For "CryptBinaryToStringW"

Function boolean CryptBinaryToString ( &
	blob pbBinary, &
	ulong cbBinary, &
	ulong dwFlags, &
	longptr pszString, &
	Ref ulong pcchString &
	) Library "crypt32.dll" Alias For "CryptBinaryToStringW"

Function boolean CryptStringToBinary ( &
	string pszString, &
	ulong cchString, &
	ulong dwFlags, &
	Ref blob pbBinary, &
	Ref ulong pcbBinary, &
	Ref ulong pdwSkip, &
	Ref ulong pdwFlags &
	) Library "crypt32.dll" Alias For "CryptStringToBinaryW"

Function ulong BCryptCloseAlgorithmProvider ( &
	Ref longptr hAlgorithm, &
	ulong dwFlags &
	) Library "bcrypt.dll"

Function ulong BCryptCreateHash ( &
	longptr hAlgorithm, &
	Ref longptr phHash, &
	Ref blob pbHashObject, &
	ulong cbHashObject, &
	longptr pbSecret, &
	ulong cbSecret, &
	ulong dwFlags &
	) Library "bcrypt.dll"

Function ulong BCryptCreateHash ( &
	longptr hAlgorithm, &
	Ref longptr phHash, &
	Ref blob pbHashObject, &
	ulong cbHashObject, &
	blob pbSecret, &
	ulong cbSecret, &
	ulong dwFlags &
	) Library "bcrypt.dll"

Function ulong BCryptDestroyHash ( &
	Ref longptr hHash &
	) Library "bcrypt.dll"

Function ulong BCryptFinishHash ( &
	longptr hHash, &
	Ref blob pbOutput, &
	ulong cbOutput, &
	ulong dwFlags &
	) Library "bcrypt.dll"

Function ulong BCryptGenRandom ( &
	longptr phAlgorithm, &
	Ref longptr pbBuffer, &
	ulong cbBuffer, &
	ulong dwFlags &
	) Library "bcrypt.dll"

Function ulong BCryptGetProperty ( &
	longptr hObject, &
	string pszProperty, &
	Ref longptr pbOutput, &
	ulong cbOutput, &
	Ref ulong pcbResult, &
	ulong dwFlags &
	) Library "bcrypt.dll"

Function ulong BCryptHashData ( &
	longptr hHash, &
	blob pbInput, &
	ulong cbInput, &
	ulong dwFlags &
	) Library "bcrypt.dll"

Function ulong BCryptOpenAlgorithmProvider ( &
	Ref longptr phAlgorithm, &
	string pszAlgId, &
	ulong pszImplementation, &
	ulong dwFlags &
	) Library "bcrypt.dll"

Function ulong BCryptGenerateSymmetricKey ( &
	longptr phAlgorithm, &
	Ref longptr phKey, &
	Ref blob pbKeyObject, &
	ulong cbKeyObject, &
	blob pbSecret, &
	ulong cbSecret, &
	ulong dwFlags &
	) Library "bcrypt.dll"

Function ulong BCryptDestroyKey ( &
	Ref longptr hKey &
	) Library "bcrypt.dll"

Function ulong BCryptEncrypt ( &
	longptr hKey, &
	blob pbInput, &
	ulong cbInput, &
	long pPaddingInfo, &
	blob pbIV, &
	ulong cbIV, &
	longptr pbOutput, &
	ulong cbOutput, &
	Ref ulong pcbResult, &
	ulong dwFlags &
	) Library "bcrypt.dll"

Function ulong BCryptEncrypt ( &
	longptr hKey, &
	blob pbInput, &
	ulong cbInput, &
	long pPaddingInfo, &
	blob pbIV, &
	ulong cbIV, &
	Ref blob pbOutput, &
	ulong cbOutput, &
	Ref ulong pcbResult, &
	ulong dwFlags &
	) Library "bcrypt.dll"

Function ulong BCryptDecrypt ( &
	longptr hKey, &
	blob pbInput, &
	ulong cbInput, &
	long pPaddingInfo, &
	blob pbIV, &
	ulong cbIV, &
	longptr pbOutput, &
	ulong cbOutput, &
	Ref ulong pcbResult, &
	ulong dwFlags &
	) Library "bcrypt.dll"

Function ulong BCryptDecrypt ( &
	longptr hKey, &
	blob pbInput, &
	ulong cbInput, &
	long pPaddingInfo, &
	blob pbIV, &
	ulong cbIV, &
	Ref blob pbOutput, &
	ulong cbOutput, &
	Ref ulong pcbResult, &
	ulong dwFlags &
	) Library "bcrypt.dll"
end prototypes

type variables
Private:

// Note: CNG is supported beginning with Windows Server 2008 and Windows Vista.

// BCrypt Error Codes
// https://msdn.microsoft.com/en-us/library/cc704588.aspx
Constant ULong STATUS_SUCCESS					= 0				// 0x00000000
Constant ULong STATUS_BUFFER_TOO_SMALL		= 3221225507	// 0xC0000023
Constant ULong STATUS_INVALID_BUFFER_SIZE = 3221225990	// 0xC0000206
Constant ULong STATUS_INVALID_HANDLE		= 3221225480	// 0xC0000008
Constant ULong STATUS_INVALID_PARAMETER	= 3221225485	// 0xC000000D
Constant ULong STATUS_NO_MEMORY				= 3221225495	// 0xC0000017
Constant ULong STATUS_NOT_FOUND				= 3221226021	// 0xC0000225
Constant ULong STATUS_NOT_SUPPORTED			= 3221225659	// 0xC00000BB

// Cryptography Primitive Property Identifiers
// https://msdn.microsoft.com/en-us/library/windows/desktop/aa376211(v=vs.85).aspx
Constant String BCRYPT_BLOCK_LENGTH  = "BlockLength"
Constant String BCRYPT_OBJECT_LENGTH = "ObjectLength"
Constant String BCRYPT_HASH_LENGTH   = "HashDigestLength"

Constant ULong BCRYPT_ALG_HANDLE_HMAC = 8
Constant ULong BCRYPT_BLOCK_PADDING = 1

Constant ULong NULL = 0
Constant ULong CRYPT_STRING_BASE64 = 1
Constant ULong CRYPT_STRING_HEXRAW = 12
Constant Ulong CRYPT_STRING_NOCRLF = 1073741824	// 0x40000000

// constants for CreateFile API function
Constant Long INVALID_HANDLE_VALUE = -1
Constant ULong GENERIC_READ      = 2147483648
Constant ULong GENERIC_WRITE     = 1073741824
Constant ULong FILE_SHARE_READ   = 1
Constant ULong FILE_SHARE_WRITE  = 2
Constant ULong CREATE_NEW			= 1
Constant ULong CREATE_ALWAYS		= 2
Constant ULong OPEN_EXISTING		= 3
Constant ULong OPEN_ALWAYS			= 4
Constant ULong TRUNCATE_EXISTING = 5

Longptr il_hAlg
Longptr il_hRanAlg
Longptr il_hHash
Longptr il_hKey

Public:

// CNG Algorithm Identifiers
// https://msdn.microsoft.com/en-us/library/windows/desktop/aa375534(v=vs.85).aspx

// Hashing Algorithms
Constant String BCRYPT_MD2_ALGORITHM    = "MD2"
Constant String BCRYPT_MD4_ALGORITHM    = "MD4"
Constant String BCRYPT_MD5_ALGORITHM    = "MD5"
Constant String BCRYPT_SHA1_ALGORITHM   = "SHA1"
Constant String BCRYPT_SHA256_ALGORITHM = "SHA256"
Constant String BCRYPT_SHA384_ALGORITHM = "SHA384"
Constant String BCRYPT_SHA512_ALGORITHM = "SHA512"

// Encryption Algorithms
Constant String BCRYPT_AES_ALGORITHM		= "AES"
Constant String BCRYPT_DES_ALGORITHM		= "DES"
Constant String BCRYPT_DESX_ALGORITHM		= "DESX"
Constant String BCRYPT_RC2_ALGORITHM		= "RC2"
Constant String BCRYPT_3DES_ALGORITHM		= "3DES"
Constant String BCRYPT_3DES_112_ALGORITHM	= "3DES_112"

Constant ULong STATUS_USER_ERROR = 0

// public non-constant instance variables

String LastFunction
String LastErrText
ULong  LastErrCode
Encoding iEncoding = EncodingAnsi!

end variables

forward prototypes
private function unsignedlong of_getlasterror (ref string as_msgtext)
private function boolean nt_success (unsignedlong ntstatus)
private subroutine of_finalcleanup ()
public function boolean of_base64decode (readonly string as_encoded, ref blob ablb_message)
public function boolean of_base64decode (readonly string as_encoded, ref string as_message)
public function boolean of_base64encode (readonly blob ablb_message, ref string as_encoded)
public function boolean of_base64encode (readonly string as_message, ref string as_encoded)
private subroutine of_errorcleanup (readonly string as_function)
public function blob of_hmac (readonly string as_algorithm, readonly blob ablb_message, readonly blob ablb_secret)
public function boolean of_writefile (readonly string as_filename, readonly blob ablob_filedata)
public function boolean of_readfile (readonly string as_filename, ref blob ablob_filedata)
public function unsignedlong of_randomnbr ()
public function blob of_encrypt (readonly string as_algorithm, readonly blob ablb_message, readonly blob ablb_secret, ref blob ablb_vector)
public function string of_decrypthex (readonly string as_algorithm, readonly string as_message, readonly string as_secret, readonly string as_vector)
public function string of_decrypt (readonly string as_algorithm, readonly string as_message, readonly string as_secret, readonly string as_vector)
public function blob of_decrypt (readonly string as_algorithm, readonly blob ablb_message, readonly blob ablb_secret, blob ablb_vector)
public function string of_blob2hex (readonly blob ablb_data)
public function blob of_hex2blob (readonly string as_hexstring)
public function datetime of_currentutc ()
private function blob of_encryptdecrypt (readonly string as_algorithm, readonly blob ablb_input, readonly blob ablb_secret, readonly blob ablb_vector, readonly boolean ab_encrypt)
public function string of_encrypt (readonly string as_algorithm, readonly string as_message, readonly string as_secret, readonly string as_vector)
public function string of_encrypthex (readonly string as_algorithm, readonly string as_message, readonly string as_secret, readonly string as_vector)
public function blob of_hmac (readonly string as_algorithm, readonly string as_message, readonly string as_secret)
public function blob of_hmac (readonly string as_algorithm, readonly string as_message, readonly blob ablb_secret)
public function blob of_hmac (readonly string as_algorithm, readonly blob ablb_message, readonly string as_secret)
public function string of_hashtohex (readonly string as_algorithm, readonly string as_message)
public function string of_hashtohex (readonly string as_algorithm, readonly blob ablb_message)
public function blob of_hash (readonly string as_algorithm, readonly blob ablb_message)
public function string of_hashfiletohex (readonly string as_algorithm, readonly string as_filename)
public function blob of_hashfile (readonly string as_algorithm, readonly string as_filename)
end prototypes

private function unsignedlong of_getlasterror (ref string as_msgtext);// -----------------------------------------------------------------------------
// SCRIPT:     of_GetLastError
//
// PURPOSE:    This function returns the most recent API error message.
//
// ARGUMENTS:  as_msgtext	- The error text ( by ref )
//
// RETURN:		The error number
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 12/30/2016	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Constant ULong FORMAT_MESSAGE_FROM_SYSTEM = 4096
Constant ULong LANG_NEUTRAL = 0
ULong lul_error, lul_Size = 255

lul_error = GetLastError()

as_msgtext = Space(lul_Size)

FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM, 0, &
					lul_error, LANG_NEUTRAL, as_msgtext, lul_Size, 0)

Return lul_error

end function

private function boolean nt_success (unsignedlong ntstatus);// -----------------------------------------------------------------------------
// SCRIPT:     NT_SUCCESS
//
// PURPOSE:    This function emulates a C macro that determines if the result
//					of the function call was successful.
//
// ARGUMENTS:  NTSTATUS	-	Return from a BCrypt function
//
// RETURN:		True=Success, False=Error
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 12/30/2016	RolandS		Initial Coding
// -----------------------------------------------------------------------------

LastErrCode = NTSTATUS

If NTSTATUS = 0 Then
	Return True
Else
	Return False
End If

end function

private subroutine of_finalcleanup ();// ----------------------------------------------------------------------------------------
// SCRIPT:		of_FinalCleanup
//
// PURPOSE:		This function performs final cleanup tasks.
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-------------------------------------------------------------
// 12/30/2016	Roland Smith	Initial Creation
// ----------------------------------------------------------------------------------------

If il_hAlg > 0 Then
	BCryptCloseAlgorithmProvider(il_hAlg, 0)
End If

If il_hRanAlg > 0 Then
	BCryptCloseAlgorithmProvider(il_hRanAlg, 0)
End If

If il_hHash > 0 Then
	BCryptDestroyHash(il_hHash)
End If

If il_hKey > 0 Then
	BCryptDestroyKey(il_hKey)
End If

end subroutine

public function boolean of_base64decode (readonly string as_encoded, ref blob ablb_message);// ----------------------------------------------------------------------------------------
// SCRIPT:		of_Base64Decode
//
// PURPOSE:		This function decodes a Base64 encoded string.
//
// ARGUMENTS:	as_encoded		-	The encoded string
//					ablb_message	-	The decoded blob
//
// RETURN:		True=Success, False=Failed
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-------------------------------------------------------------
// 12/30/2016	Roland Smith	Initial Creation
// ----------------------------------------------------------------------------------------

Blob lblb_Decoded
ULong lul_MsgLen, lul_BufLen, lul_Skip, lul_pFlags

lul_MsgLen = Len(as_encoded)
lul_BufLen = lul_MsgLen
lblb_Decoded = Blob(Space(lul_Buflen), iEncoding)

// decode the Base64 string
If Not CryptStringToBinary(as_encoded, &
					lul_MsgLen, CRYPT_STRING_BASE64, lblb_Decoded, &
					lul_BufLen, lul_Skip, lul_pFlags) Then
	LastErrCode  = of_GetLastError(LastErrText)
	LastFunction = "CryptStringToBinary"
	Return False
End If

ablb_Message = BlobMid(lblb_Decoded, 1, lul_BufLen)

Return True

end function

public function boolean of_base64decode (readonly string as_encoded, ref string as_message);// ----------------------------------------------------------------------------------------
// SCRIPT:		of_Base64Decode
//
// PURPOSE:		This function decodes a Base64 encoded string.
//
// ARGUMENTS:	as_encoded	-	The encoded string
//					as_message	-	The decoded string
//
// RETURN:		True=Success, False=Failed
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-------------------------------------------------------------
// 12/30/2016	Roland Smith	Initial Creation
// ----------------------------------------------------------------------------------------

Blob lblb_Message

If of_Base64Decode(as_encoded, lblb_Message) Then
	as_message = String(lblb_Message, iEncoding)

	Return True
End If

Return False

end function

public function boolean of_base64encode (readonly blob ablb_message, ref string as_encoded);// ----------------------------------------------------------------------------------------
// SCRIPT:		of_Base64Encode
//
// PURPOSE:		This function converts a blob to a Base64 encoded string.
//
// ARGUMENTS:	ablb_message	-	The message to be encoded
//					as_encoded		-	The encoded string
//
// RETURN:		True=Success, False=Failed
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-------------------------------------------------------------
// 12/30/2016	Roland Smith	Initial Creation
// ----------------------------------------------------------------------------------------

ULong lul_MsgLen, lul_BufLen

// determine size of the encoded buffer
lul_MsgLen = Len(ablb_message)
If Not CryptBinaryToString(ablb_message, lul_MsgLen, &
					CRYPT_STRING_BASE64, NULL, lul_BufLen) Then
	LastErrCode  = of_GetLastError(LastErrText)
	LastFunction = "CryptBinaryToString"
	Return False
End If

// allocate encoded buffer
as_encoded = Space(lul_BufLen)

// encode the binary data as Base64 string
If Not CryptBinaryToString(ablb_message, lul_MsgLen, &
				CRYPT_STRING_BASE64 + CRYPT_STRING_NOCRLF, &
				as_encoded, lul_BufLen) Then
	LastErrCode  = of_GetLastError(LastErrText)
	LastFunction = "CryptBinaryToString"
	Return False
End If

Return True

end function

public function boolean of_base64encode (readonly string as_message, ref string as_encoded);// ----------------------------------------------------------------------------------------
// SCRIPT:		of_Base64Encode
//
// PURPOSE:		This function converts a string to a Base64 encoded string.
//
// ARGUMENTS:	as_message	-	The message to be encoded
//					as_encoded	-	The encoded string
//
// RETURN:		True=Success, False=Failed
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-------------------------------------------------------------
// 12/30/2016	Roland Smith	Initial Creation
// ----------------------------------------------------------------------------------------

Blob lblb_Message

lblb_Message = Blob(as_message, iEncoding)

Return of_Base64Encode(lblb_Message, as_encoded)

end function

private subroutine of_errorcleanup (readonly string as_function);// ----------------------------------------------------------------------------------------
// SCRIPT:		of_ErrorCleanup
//
// PURPOSE:		This function sets the error message for BCrypt functions and
//					then calls of_FinalCleanup.
//
// ARGUMENTS:	as_function	-	Name of function that failed
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-------------------------------------------------------------
// 12/30/2016	Roland Smith	Initial Creation
// ----------------------------------------------------------------------------------------

LastFunction = as_function

choose case LastErrCode
	case STATUS_USER_ERROR
		// LastErrText set in calling function
	case STATUS_BUFFER_TOO_SMALL
		LastErrText = "The buffer is too small to contain the entry. No information has been written to the buffer."
	case STATUS_INVALID_BUFFER_SIZE
		LastErrText = "The size of the buffer is invalid for the specified operation."
	case STATUS_INVALID_HANDLE
		LastErrText = "An invalid HANDLE was specified."
	case STATUS_INVALID_PARAMETER
		LastErrText = "An invalid parameter was passed to a service or function."
	case STATUS_NO_MEMORY
		LastErrText = "Not enough virtual memory or paging file quota is available to complete the specified operation."
	case STATUS_NOT_FOUND
		If as_function = "BCryptOpenAlgorithmProvider" Then
			LastErrText = "No provider was found for the specified algorithm ID."
		Else
			LastErrText = "The object was not found."
		End If
	case STATUS_NOT_SUPPORTED
		LastErrText = "The request is not supported."
	case else
		LastErrText = "Other error: " + String(LastErrCode)
end choose

of_FinalCleanup()

end subroutine

public function blob of_hmac (readonly string as_algorithm, readonly blob ablb_message, readonly blob ablb_secret);// -----------------------------------------------------------------------------
// SCRIPT:     of_HMAC
//
// PURPOSE:    This function returns a hash using the passed algorithm
//					and secret code.
//
// ARGUMENTS:  as_algorithm	-	The Algorithm Identifier
//					ablb_message	-	The message to be hashed
//					ablb_secret		-	The secret code
//
// RETURN:		Hash blob
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 12/30/2016	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Blob lblb_NullReturn, lblb_pbHashObject, lblb_pbHash
Longptr ll_cbHashObject, ll_cbHash
ULong lul_cbData

SetNull(lblb_NullReturn)

// open an algorithm handle
If Not NT_SUCCESS(BCryptOpenAlgorithmProvider(il_hAlg, &
						as_algorithm, NULL, &
						BCRYPT_ALG_HANDLE_HMAC)) Then
	of_ErrorCleanup("BCryptOpenAlgorithmProvider")
	Return lblb_NullReturn
End If

// calculate the size of the buffer to hold the hash object
If Not NT_SUCCESS(BCryptGetProperty(il_hAlg, &
						BCRYPT_OBJECT_LENGTH, &
						ll_cbHashObject, 4, lul_cbData, 0)) Then
	of_ErrorCleanup("BCryptGetProperty BCRYPT_OBJECT_LENGTH")					
	Return lblb_NullReturn
End If

lblb_pbHashObject = Blob(Space(ll_cbHashObject), iEncoding)

// calculate the length of the hash
If Not NT_SUCCESS(BCryptGetProperty(il_hAlg, &
						BCRYPT_HASH_LENGTH, &
						ll_cbHash, 4, lul_cbData, 0)) Then
	of_ErrorCleanup("BCryptGetProperty BCRYPT_HASH_LENGTH")
	Return lblb_NullReturn
End If

lblb_pbHash = Blob(Space(ll_cbHash), iEncoding)

// create a hash
If Not NT_SUCCESS(BCryptCreateHash(il_hAlg, &
						il_hHash, lblb_pbHashObject, &
						ll_cbHashObject, ablb_secret, Len(ablb_secret), 0)) Then
	of_ErrorCleanup("BCryptCreateHash")
	Return lblb_NullReturn
End If

// hash some data
If Not NT_SUCCESS(BCryptHashData(il_hHash, &
						ablb_Message, Len(ablb_Message), 0)) Then
	of_ErrorCleanup("BCryptHashData")
	Return lblb_NullReturn
End If

// close the hash
If Not NT_SUCCESS(BCryptFinishHash(il_hHash, &
						lblb_pbHash, ll_cbHash, 0)) Then
	of_ErrorCleanup("BCryptFinishHash")
	Return lblb_NullReturn
End If

// final cleanup
of_FinalCleanup()

Return lblb_pbHash

end function

public function boolean of_writefile (readonly string as_filename, readonly blob ablob_filedata);// -----------------------------------------------------------------------------
// SCRIPT:     of_WriteFile
//
// PURPOSE:    This function writes a blob to a file on disk.
//
// ARGUMENTS:  as_filename		- The name of the file
//					ablob_filedata	- The blob data of the file
//
// RETURN:     True = Success, False = Failure
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 12/30/2016	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Longptr ll_file
ULong lul_length, lul_written
Boolean lb_rtn

lul_length = Len(ablob_filedata)

// open file for write
ll_file = CreateFile(as_filename, GENERIC_WRITE, &
					FILE_SHARE_WRITE, 0, CREATE_ALWAYS, 0, 0)
If ll_file = INVALID_HANDLE_VALUE Then
	LastErrCode  = of_GetLastError(LastErrText)
	LastFunction = "CreateFile"
	Return False
End If

// write file to disk
lb_rtn = WriteFile(ll_file, ablob_filedata, &
					lul_Length, lul_written, 0)

// close the file
CloseHandle(ll_file)

Return True

end function

public function boolean of_readfile (readonly string as_filename, ref blob ablob_filedata);// -----------------------------------------------------------------------------
// SCRIPT:     of_ReadFile
//
// PURPOSE:    This function is used to read a file from disk to a blob.
//
// ARGUMENTS:  as_filename		- Filename
//					ablob_filedata	- By ref blob to receive the file contents
//
// RETURN:     True = Success, False = Failure
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 12/30/2016	RolandS		Initial Coding
// -----------------------------------------------------------------------------

ULong lul_bytes, lul_length
Long ll_hFile
Blob lblob_filedata
Boolean lb_result

// get file length
lul_length = FileLength(as_filename)

// open file for read
ll_hFile = CreateFile(as_filename, GENERIC_READ, &
					FILE_SHARE_READ, 0, OPEN_EXISTING, 0, 0)
If ll_hFile = INVALID_HANDLE_VALUE Then
	LastErrCode  = of_GetLastError(LastErrText)
	LastFunction = "CreateFile"
	Return False
End If

// read the entire file contents in one shot
lblob_filedata = Blob(Space(lul_length), iEncoding)
lb_result = ReadFile(ll_hFile, lblob_filedata, &
					lul_length, lul_bytes, 0)
ablob_filedata = BlobMid(lblob_filedata, 1, lul_length)

// close the file
CloseHandle(ll_hFile)

Return lb_result

end function

public function unsignedlong of_randomnbr ();// ----------------------------------------------------------------------------------------
// SCRIPT:		of_RandomNbr
//
// PURPOSE:		This function returns a random number.
//
// RETURN:		ULong random number
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-------------------------------------------------------------
// 12/30/2016	Roland Smith	Initial Creation
// ----------------------------------------------------------------------------------------

Constant String BCRYPT_RNG_ALGORITHM = "RNG"
Longptr ll_Random

// open an algorithm handle
If Not NT_SUCCESS(BCryptOpenAlgorithmProvider(il_hRanAlg, &
						BCRYPT_RNG_ALGORITHM, 0, 0)) Then
	of_ErrorCleanup("BCryptOpenAlgorithmProvider")
	SetNull(ll_Random)
	Return ll_Random
End If

// generate random number
If Not NT_SUCCESS(BCryptGenRandom(il_hRanAlg, &
						ll_Random, 4, 0)) Then
	of_ErrorCleanup("BCryptGenRandom")
	SetNull(ll_Random)
	Return ll_Random
End If

// final cleanup
of_FinalCleanup()

Return ll_Random

end function

public function blob of_encrypt (readonly string as_algorithm, readonly blob ablb_message, readonly blob ablb_secret, ref blob ablb_vector);// ----------------------------------------------------------------------------------------
// SCRIPT:		of_Encrypt
//
// PURPOSE:		This function will encrypt data. It only supports algorithms
//					that can use a symmetric key.
//
// ARGUMENTS:	as_algorithm	-	The algorithm identifier
//					ablb_message	-	The message to be encrypted
//					ablb_secret		-	The secret password
//					ablb_vector		-	Random unique value
//
// RETURN:		Blob containing encrypted message
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-------------------------------------------------------------
// 12/30/2016	Roland Smith	Initial Creation
// ----------------------------------------------------------------------------------------

Return of_EncryptDecrypt(as_algorithm, ablb_Message, ablb_Secret, ablb_Vector, True)

end function

public function string of_decrypthex (readonly string as_algorithm, readonly string as_message, readonly string as_secret, readonly string as_vector);// ----------------------------------------------------------------------------------------
// SCRIPT:		of_DecryptHex
//
// PURPOSE:		This function converts a hex string to a blob and then decrypts it.
//
// ARGUMENTS:	as_algorithm	-	The algorithm identifier
//					as_message		-	The message to be decrypted
//					as_secret		-	The secret password
//					as_vector		-	Random unique value
//
// RETURN:		String containing decrypted data
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-------------------------------------------------------------
// 12/30/2016	Roland Smith	Initial Creation
// ----------------------------------------------------------------------------------------

Blob lblb_Message, lblb_Secret, lblb_Vector, lblb_Decrypted
String ls_Null, ls_Return

lblb_Message = of_Hex2Blob(as_message)

lblb_Secret  = Blob(as_secret, iEncoding)
lblb_Vector  = Blob(as_vector, iEncoding)

lblb_Decrypted = of_Decrypt(as_algorithm, lblb_Message, lblb_Secret, lblb_Vector)
If IsNull(lblb_Decrypted) Then
	SetNull(ls_Null)
	Return ls_Null
End If

ls_Return = String(lblb_Decrypted, iEncoding)

Return ls_Return

end function

public function string of_decrypt (readonly string as_algorithm, readonly string as_message, readonly string as_secret, readonly string as_vector);// ----------------------------------------------------------------------------------------
// SCRIPT:		of_Decrypt
//
// PURPOSE:		This function will decrypt data. It only supports algorithms
//					that can use a symmetric key.
//
// ARGUMENTS:	as_algorithm	-	The algorithm identifier
//					as_message		-	The message to be decrypted
//					as_secret		-	The secret password
//					as_vector		-	Random unique value
//
// RETURN:		String containing decrypted data
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-------------------------------------------------------------
// 12/30/2016	Roland Smith	Initial Creation
// ----------------------------------------------------------------------------------------

Blob lblb_Message, lblb_Secret, lblb_Vector, lblb_Decrypted
String ls_Null, ls_Return

lblb_Message = Blob(as_message, iEncoding)
lblb_Secret  = Blob(as_secret, iEncoding)
lblb_Vector  = Blob(as_vector, iEncoding)

lblb_Decrypted = of_Decrypt(as_algorithm, lblb_Message, lblb_Secret, lblb_Vector)
If IsNull(lblb_Decrypted) Then
	SetNull(ls_Null)
	Return ls_Null
End If

ls_Return = String(lblb_Decrypted, iEncoding)

Return ls_Return

end function

public function blob of_decrypt (readonly string as_algorithm, readonly blob ablb_message, readonly blob ablb_secret, blob ablb_vector);// ----------------------------------------------------------------------------------------
// SCRIPT:		of_Decrypt
//
// PURPOSE:		This function will decrypt data. It only supports algorithms
//					that can use a symmetric key.
//
// ARGUMENTS:	as_algorithm	-	The algorithm identifier
//					ablb_message	-	The message to be decrypted
//					ablb_secret		-	The secret password
//					ablb_vector		-	Random unique value
//
// RETURN:		Blob containing decrypted message
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-------------------------------------------------------------
// 12/30/2016	Roland Smith	Initial Creation
// ----------------------------------------------------------------------------------------

Return of_EncryptDecrypt(as_algorithm, ablb_Message, ablb_Secret, ablb_vector, False)

end function

public function string of_blob2hex (readonly blob ablb_data);// -----------------------------------------------------------------------------
// SCRIPT:     of_Blob2Hex
//
// PURPOSE:    This function converts a blob to a hex string.
//
//					This code is not supported on Windows Server 2003 and Windows XP.
//
// ARGUMENTS:  ablb_data	- The blob data
//
// RETURN:		String representing the blob in hex
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 01/13/2017	RolandS		Initial Coding
// -----------------------------------------------------------------------------

String ls_result
ULong lul_MsgLen, lul_BufLen

lul_MsgLen = Len(ablb_data)
lul_BufLen = lul_MsgLen * 4

// allocate encoded buffer
ls_result = Space(lul_BufLen)

// encode the binary data as Hexidecimal string
If Not CryptBinaryToString(ablb_data, lul_MsgLen, &
				CRYPT_STRING_HEXRAW + CRYPT_STRING_NOCRLF, &
				ls_result, lul_BufLen) Then
	LastErrCode  = of_GetLastError(LastErrText)
	LastFunction = "CryptBinaryToString"
	SetNull(ls_result)
End If

Return ls_result

end function

public function blob of_hex2blob (readonly string as_hexstring);// -----------------------------------------------------------------------------
// SCRIPT:     of_Hex2Blob
//
// PURPOSE:    This function converts a hex string to a blob.
//
//					This code is not supported on Windows Server 2003 and Windows XP.
//
// ARGUMENTS:  as_hexstring	- The hex data
//
// RETURN:		Blob representing the passed hex characters
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 01/13/2017	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Blob lblb_Output
ULong lul_MsgLen, lul_BufLen, lul_Skip, lul_pFlags
String ls_hex

lul_MsgLen = Len(as_hexstring)
lul_BufLen = lul_MsgLen / 2
lblb_Output = Blob(Space(lul_Buflen), iEncoding)

// decode the Hexidecimal string
If Not CryptStringToBinary(as_hexstring, &
					lul_MsgLen, CRYPT_STRING_HEXRAW, lblb_Output, &
					lul_BufLen, lul_Skip, lul_pFlags) Then
	LastErrCode  = of_GetLastError(LastErrText)
	LastFunction = "CryptStringToBinary"
	SetNull(lblb_Output)
End If
ls_hex = String(lblb_Output)

Return lblb_Output

end function

public function datetime of_currentutc ();// -----------------------------------------------------------------------------
// SCRIPT:     of_CurrentUTC
//
// PURPOSE:    This function converts the current local time to GMT/UTC. Some
//					OAuth/REST services require this to be passed.
//
//					According to Wikipedia:
//
//					Prior to 1972, this time was called Greenwich Mean Time (GMT)
//					but is now referred to as Coordinated Universal Time or
//					Universal Time Coordinated (UTC).
//
// RETURN:		Datetime
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 09/26/2017	RolandS		Initial Coding
// -----------------------------------------------------------------------------

SYSTEMTIME lstr_Local, lstr_UTC
DateTime ldt_local, ldt_gmt

ldt_local = DateTime(Today(), Now())

lstr_Local.wYear   = Year(Date(ldt_local))
lstr_Local.wMonth  = Month(Date(ldt_local))
lstr_Local.wDay    = Day(Date(ldt_local))
lstr_Local.wHour   = Hour(Time(ldt_local))
lstr_Local.wMinute = Minute(Time(ldt_local))
lstr_Local.wSecond = Second(Time(ldt_local))
lstr_Local.wMilliSeconds = Integer(String(ldt_local, "fff"))

TzSpecificLocalTimeToSystemTime(0, lstr_Local, lstr_UTC)

ldt_gmt = DateTime(Date(lstr_UTC.wYear, &
								lstr_UTC.wMonth, &
								lstr_UTC.wDay), &
						 Time(lstr_UTC.wHour, &
								lstr_UTC.wMinute, &
								lstr_UTC.wSecond, &
								lstr_UTC.wMilliseconds))

Return ldt_gmt

end function

private function blob of_encryptdecrypt (readonly string as_algorithm, readonly blob ablb_input, readonly blob ablb_secret, readonly blob ablb_vector, readonly boolean ab_encrypt);// ----------------------------------------------------------------------------------------
// SCRIPT:		of_EncryptDecrypt
//
// PURPOSE:		This function will encrypt or decrypt data. It only supports algorithms
//					that can use a symmetric key.
//
// ARGUMENTS:	as_algorithm	-	The Algorithm Identifier
//					ablb_input		-	Data to be encrypted/decrypted
//					ablb_secret		-	The Secret password
//					ablb_vector		-	Random unique value
//					ab_encrypt		-	True=encrypt, False=decrypt
//
//					The argument as_vector is a Random unique value used for the
//					Initialization Vector (Salt). The value is created when encrypting
//					and must be passed back in when decrypting. It is acceptable to
//					store it in plain text.
//
// RETURN:		Blob containing encrypted/decrypted data
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-------------------------------------------------------------
// 12/30/2016	Roland Smith	Initial Creation
// ----------------------------------------------------------------------------------------

Blob lblb_NullReturn, lblb_CipherText, lblb_SecretKey, lblb_KeyObject
Longptr ll_BlockSize, ll_keyObjectSize
ULong lul_cbData, lul_cbInput, lul_cbVector, lul_CipherTextLen

SetNull(lblb_NullReturn)

// Hash the Secret Key
lblb_SecretKey = of_Hash(BCRYPT_SHA256_ALGORITHM, ablb_secret)
If IsNull(lblb_SecretKey) Then
	Return lblb_NullReturn
End If

// Open the Algorithm Provider
If Not NT_SUCCESS(BCryptOpenAlgorithmProvider(il_hAlg, &
						as_algorithm, NULL, 0)) Then
	of_ErrorCleanup("BCryptOpenAlgorithmProvider")
	Return lblb_NullReturn
End If

// Get Algorithm Block Length
If Not NT_SUCCESS(BCryptGetProperty(il_hAlg, &
						BCRYPT_BLOCK_LENGTH, &
						ll_BlockSize, 4, lul_cbData, 0)) Then
	of_ErrorCleanup("BCryptGetProperty BCRYPT_BLOCK_LENGTH")
	Return lblb_NullReturn
End If

lul_cbInput  = Len(ablb_input)
If IsNull(ablb_Vector) Or Len(ablb_Vector) < ll_BlockSize Then
	LastErrCode = STATUS_USER_ERROR
	LastErrText = "Vector must have a length of " + String(ll_BlockSize) + "."
	of_ErrorCleanup("Vector Validation")
	Return lblb_NullReturn
Else
	lul_cbVector = Len(ablb_Vector)
End If

// Get Algorithm Object Length
If Not NT_SUCCESS(BCryptGetProperty(il_hAlg, &
						BCRYPT_OBJECT_LENGTH, &
						ll_keyObjectSize, 4, lul_cbData, 0)) Then
	of_ErrorCleanup("BCryptGetProperty BCRYPT_OBJECT_LENGTH")
	Return lblb_NullReturn
End If

// Allocate KeyObject
lblb_KeyObject = Blob(Space(ll_keyObjectSize), iEncoding)

// Generate Symmetric Key
If Not NT_SUCCESS(BCryptGenerateSymmetricKey(il_hAlg, &
						il_hKey, lblb_KeyObject, ll_keyObjectSize, &
						lblb_SecretKey, Len(lblb_SecretKey), 0)) Then
	of_ErrorCleanup("BCryptGenerateSymmetricKey")
	Return lblb_NullReturn
End If

If ab_encrypt Then
	// Get Cipher Text Byte Count
	If Not NT_SUCCESS(BCryptEncrypt(il_hKey, &
							ablb_input, lul_cbInput, &
							NULL, ablb_Vector, lul_cbVector, &
							NULL, 0, lul_CipherTextLen, &
							BCRYPT_BLOCK_PADDING)) Then
		of_ErrorCleanup("BCryptEncrypt")
		Return lblb_NullReturn
	End If

	// Allocate Cipher Text Buffer
	lblb_CipherText = Blob(Space(lul_CipherTextLen), iEncoding)

	// Encrypt The Data
	If Not NT_SUCCESS(BCryptEncrypt(il_hKey, &
							ablb_input, lul_cbInput, &
							NULL, ablb_Vector, lul_cbVector, &
							lblb_CipherText, lul_CipherTextLen, &
							lul_CipherTextLen, BCRYPT_BLOCK_PADDING)) Then
		of_ErrorCleanup("BCryptEncrypt")
		Return lblb_NullReturn
	End If
Else
	// Get Plain Text Byte Count
	If Not NT_SUCCESS(BCryptDecrypt(il_hKey, &
							ablb_input, lul_cbInput, &
							NULL, ablb_Vector, lul_cbVector, &
							NULL, 0, lul_CipherTextLen, &
							BCRYPT_BLOCK_PADDING)) Then
		of_ErrorCleanup("BCryptDecrypt1")
		Return lblb_NullReturn
	End If

	// Allocate Plain Text Buffer
	lblb_CipherText = Blob(Space(lul_CipherTextLen), iEncoding)

	// Decrypt The Data
	If Not NT_SUCCESS(BCryptDecrypt(il_hKey, &
							ablb_input, lul_cbInput, &
							NULL, ablb_Vector, lul_cbVector, &
							lblb_CipherText, lul_CipherTextLen, &
							lul_CipherTextLen, BCRYPT_BLOCK_PADDING)) Then
		of_ErrorCleanup("BCryptDecrypt2")
		Return lblb_NullReturn
	End If
	
	// trim off any extra space
	lblb_CipherText = BlobMid(lblb_CipherText, 1, lul_CipherTextLen)
End If

// final cleanup
of_FinalCleanup()

Return lblb_CipherText

end function

public function string of_encrypt (readonly string as_algorithm, readonly string as_message, readonly string as_secret, readonly string as_vector);// ----------------------------------------------------------------------------------------
// SCRIPT:		of_Encrypt
//
// PURPOSE:		This function will encrypt data. It only supports algorithms
//					that can use a symmetric key.
//
// ARGUMENTS:	as_algorithm	-	The algorithm identifier
//					as_message		-	The message to be encrypted
//					as_secret		-	The secret password
//					as_vector		-	Random unique value
//
// RETURN:		String containing encrypted data
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-------------------------------------------------------------
// 12/30/2016	Roland Smith	Initial Creation
// ----------------------------------------------------------------------------------------

Blob lblb_Message, lblb_Secret, lblb_Vector, lblb_Encrypted
String ls_Null, ls_Return

lblb_Message = Blob(as_message, iEncoding)
lblb_Secret  = Blob(as_secret, iEncoding)
lblb_Vector  = Blob(as_vector, iEncoding)

lblb_Encrypted = of_Encrypt(as_algorithm, lblb_Message, lblb_Secret, lblb_Vector)
If IsNull(lblb_Encrypted) Then
	SetNull(ls_Null)
	Return ls_Null
End If

ls_Return = String(lblb_Encrypted, iEncoding)

Return ls_Return

end function

public function string of_encrypthex (readonly string as_algorithm, readonly string as_message, readonly string as_secret, readonly string as_vector);// ----------------------------------------------------------------------------------------
// SCRIPT:		of_EncryptHex
//
// PURPOSE:		This function encrypts a string and then converts it to a hex string.
//
// ARGUMENTS:	as_algorithm	-	The algorithm identifier
//					as_message		-	The message to be encrypted
//					as_secret		-	The secret password
//					as_vector		-	Random unique value
//
// RETURN:		Hex String containing encrypted data
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-------------------------------------------------------------
// 12/30/2016	Roland Smith	Initial Creation
// ----------------------------------------------------------------------------------------

Blob lblb_Message, lblb_Secret, lblb_Vector, lblb_Encrypted
String ls_Null

lblb_Message = Blob(as_message, iEncoding)
lblb_Secret  = Blob(as_secret, iEncoding)
lblb_Vector  = Blob(as_vector, iEncoding)

lblb_Encrypted = of_Encrypt(as_algorithm, lblb_Message, lblb_Secret, lblb_Vector)
If IsNull(lblb_Encrypted) Then
	SetNull(ls_Null)
	Return ls_Null
End If

Return of_Blob2Hex(lblb_Encrypted)

end function

public function blob of_hmac (readonly string as_algorithm, readonly string as_message, readonly string as_secret);// -----------------------------------------------------------------------------
// SCRIPT:     of_HMAC
//
// PURPOSE:    This function returns a hash using the passed algorithm
//					and secret code.
//
// ARGUMENTS:  as_algorithm	-	The Algorithm Identifier
//					as_message		-	The message to be hashed
//					as_secret		-	The secret code
//
// RETURN:		Hash string
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 12/30/2016	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Blob lblb_Message, lblb_Secret, lblb_Result

// convert message/secret to a blob
lblb_Message = Blob(as_message, iEncoding)
lblb_Secret  = Blob(as_secret, iEncoding)

// hash the message
lblb_Result = of_HMAC(as_algorithm, lblb_Message, lblb_secret)

// convert the hash to hex
Return lblb_Result 

end function

public function blob of_hmac (readonly string as_algorithm, readonly string as_message, readonly blob ablb_secret);// -----------------------------------------------------------------------------
// SCRIPT:     of_HMAC
//
// PURPOSE:    This function returns a hash using the passed algorithm
//					and secret code.
//
// ARGUMENTS:  as_algorithm	-	The Algorithm Identifier
//					as_message		-	The message to be hashed
//					as_secret		-	The secret code
//
// RETURN:		Hash string
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 12/30/2016	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Blob lblb_Message, lblb_Result

// convert message to a blob
lblb_Message = Blob(as_message, iEncoding)

// hash the message
lblb_Result = of_HMAC(as_algorithm, lblb_Message, ablb_secret)

// convert the hash to hex
Return lblb_Result 

end function

public function blob of_hmac (readonly string as_algorithm, readonly blob ablb_message, readonly string as_secret);// -----------------------------------------------------------------------------
// SCRIPT:     of_HMAC
//
// PURPOSE:    This function returns a hash using the passed algorithm
//					and secret code.
//
// ARGUMENTS:  as_algorithm	-	The Algorithm Identifier
//					ablb_message	-	The message to be hashed
//					as_secret		-	The secret code
//
// RETURN:		Hash string
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 12/30/2016	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Blob lblb_Secret, lblb_Result

// convert secret to a blob
lblb_Secret = Blob(as_secret, iEncoding)

// hash the message
lblb_Result = of_HMAC(as_algorithm, ablb_Message, lblb_secret)

// convert the hash to hex
Return lblb_Result 

end function

public function string of_hashtohex (readonly string as_algorithm, readonly string as_message);// -----------------------------------------------------------------------------
// SCRIPT:     of_Hash
//
// PURPOSE:    This function returns a hash using the passed algorithm.
//
// ARGUMENTS:  as_algorithm	-	The Algorithm Identifier
//					as_message		-	The message to be hashed
//
// RETURN:		Hash string
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 12/30/2016	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Blob lblb_Message, lblb_Result

	lblb_Message = Blob(as_message, iEncoding)
 
// hash the message
lblb_Result = of_Hash(as_algorithm, lblb_Message)

// convert the hash to hex
Return of_Blob2Hex(lblb_Result)

end function

public function string of_hashtohex (readonly string as_algorithm, readonly blob ablb_message);// -----------------------------------------------------------------------------
// SCRIPT:     of_Hash
//
// PURPOSE:    This function returns a hash using the passed algorithm.
//
// ARGUMENTS:  as_algorithm	-	The Algorithm Identifier
//					ablb_message	-	The message to be hashed
//
// RETURN:		Hash string
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 12/30/2016	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Blob lblb_Result

// hash the message
lblb_Result = of_Hash(as_algorithm, ablb_Message)

// convert the hash to hex
Return of_Blob2Hex(lblb_Result)

end function

public function blob of_hash (readonly string as_algorithm, readonly blob ablb_message);// -----------------------------------------------------------------------------
// SCRIPT:     of_HashBlob
//
// PURPOSE:    This function returns a hash using the passed algorithm.
//
// ARGUMENTS:  as_algorithm	-	The Algorithm Identifier
//					ablb_message	-	The message to be hashed
//
// RETURN:		Hash blob
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 12/30/2016	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Blob lblb_NullReturn, lblb_pbHashObject, lblb_pbHash
Longptr ll_cbHashObject, ll_cbHash
ULong lul_cbData

SetNull(lblb_NullReturn)

// open an algorithm handle
If Not NT_SUCCESS(BCryptOpenAlgorithmProvider(il_hAlg, &
						as_algorithm, NULL, 0)) Then
	of_ErrorCleanup("BCryptOpenAlgorithmProvider")
	Return lblb_NullReturn
End If

// calculate the size of the buffer to hold the hash object
If Not NT_SUCCESS(BCryptGetProperty(il_hAlg, &
						BCRYPT_OBJECT_LENGTH, &
						ll_cbHashObject, 4, lul_cbData, 0)) Then
	of_ErrorCleanup("BCryptGetProperty BCRYPT_OBJECT_LENGTH")
	Return lblb_NullReturn
End If

lblb_pbHashObject = Blob(Space(ll_cbHashObject), iEncoding)

// calculate the length of the hash
If Not NT_SUCCESS(BCryptGetProperty(il_hAlg, &
						BCRYPT_HASH_LENGTH, &
						ll_cbHash, 4, lul_cbData, 0)) Then
	of_ErrorCleanup("BCryptGetProperty BCRYPT_HASH_LENGTH")
	Return lblb_NullReturn
End If

lblb_pbHash = Blob(Space(ll_cbHash), iEncoding)

// create a hash
If Not NT_SUCCESS(BCryptCreateHash(il_hAlg, &
						il_hHash, lblb_pbHashObject, &
						ll_cbHashObject, 0, 0, 0)) Then
	of_ErrorCleanup("BCryptCreateHash")
	Return lblb_NullReturn
End If

// hash some data
If Not NT_SUCCESS(BCryptHashData(il_hHash, &
						ablb_Message, Len(ablb_Message), 0)) Then
	of_ErrorCleanup("BCryptHashData")
	Return lblb_NullReturn
End If

// close the hash
If Not NT_SUCCESS(BCryptFinishHash(il_hHash, &
						lblb_pbHash, ll_cbHash, 0)) Then
	of_ErrorCleanup("BCryptFinishHash")
	Return lblb_NullReturn
End If

// final cleanup
of_FinalCleanup()

Return lblb_pbHash

end function

public function string of_hashfiletohex (readonly string as_algorithm, readonly string as_filename);// ----------------------------------------------------------------------------------------
// SCRIPT:		of_HashFile
//
// PURPOSE:		This function reads a file into a blob and then returns a hash.
//
// ARGUMENTS:	as_algorithm	-	The algorithm identifier
//					as_filename		-	The name of the file
//
// RETURN:		Hash string
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-------------------------------------------------------------
// 12/30/2016	Roland Smith	Initial Creation
// ----------------------------------------------------------------------------------------

Blob lblb_content
String ls_null

If of_ReadFile(as_filename, lblb_content) Then
	Return of_Hashtohex(as_algorithm, lblb_content)
Else
	SetNull(ls_null)
	Return ls_null
End If

end function

public function blob of_hashfile (readonly string as_algorithm, readonly string as_filename);// ----------------------------------------------------------------------------------------
// SCRIPT:		of_HashFile
//
// PURPOSE:		This function reads a file into a blob and then returns a hash.
//
// ARGUMENTS:	as_algorithm	-	The algorithm identifier
//					as_filename		-	The name of the file
//
// RETURN:		Hash string
//
// DATE			PROG/ID			DESCRIPTION OF CHANGE / REASON
// --------		-------------	-------------------------------------------------------------
// 12/30/2016	Roland Smith	Initial Creation
// ----------------------------------------------------------------------------------------

Blob lblb_content
String ls_null

If of_ReadFile(as_filename, lblb_content) Then
	Return of_Hash(as_algorithm, lblb_content)
Else
	SetNull(lblb_content)
	Return lblb_content
End If

end function

on n_bcrypt.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_bcrypt.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

