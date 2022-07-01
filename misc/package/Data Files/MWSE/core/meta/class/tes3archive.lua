-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- @diagnostic disable:undefined-doc-name

--- Loaded data from a BSA file.
--- @class tes3archive
--- @field fileCount number *Read-only*. The number of file entries in the BSA.
--- @field nextArchive tes3archive *Read-only*. The next archive to access after this one.
--- @field offsetToFileNameHashes number *Read-only*. The offset in the BSA file where file name hashes can be found.
--- @field path string *Read-only*. The full path to the BSA, relative to the Morrowind installation directory.
--- @field sizesAndOffsets tes3archiveOffsetSizeData[] *Read-only*. An array of sizes and offsets for entries in the archive.
tes3archive = {}

--- Searches for a file in the archive, and returns the index that it can be found in.
--- @param path string The path to the file held in the archive.
--- @return number|nil index The index in the archive that the path was found at, or `nil` if no result was found.
function tes3archive:findFileIndex(path) end

