/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140210-00 [Feb 10 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000036A (874)
 *     Revision         0x01
 *     Checksum         0x00
 *     OEM ID           "APPLE "
 *     OEM Table ID     "CpuPm"
 *     OEM Revision     0x00015600 (87552)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20140210 (538182160)
 */

DefinitionBlock ("ssdt.aml", "SSDT", 1, "APPLE ", "CpuPm", 0x00015600)
{
    External (\_SB.CPU0, DeviceObj)
    External (\_SB.CPU1, DeviceObj)
    External (\_SB.CPU2, DeviceObj)
    External (\_SB.CPU3, DeviceObj)
    External (\_SB.CPU4, DeviceObj)
    External (\_SB.CPU5, DeviceObj)
    External (\_SB.CPU6, DeviceObj)
    External (\_SB.CPU7, DeviceObj)

    Scope (\_SB.CPU0)
    {
        Method (_INI, 0, NotSerialized)
        {
            Store ("ssdtPRGen version....: 15.6 / Mac OS X 10.10.3 (14D131)", Debug)
            Store ("target processor.....: E3-1231 v3", Debug)
            Store ("running processor....: Intel(R) Xeon(R) CPU E3-1231 v3 @ 3.40GHz", Debug)
            Store ("baseFrequency........: 800", Debug)
            Store ("frequency............: 3400", Debug)
            Store ("busFrequency.........: 100", Debug)
            Store ("logicalCPUs..........: 8", Debug)
            Store ("maximum TDP..........: 80", Debug)
            Store ("packageLength........: 31", Debug)
            Store ("turboStates..........: 4", Debug)
            Store ("maxTurboFrequency....: 3800", Debug)
            Store ("machdep.xcpm.mode....: 1", Debug)
        }

        Name (APLF, Zero)
        Name (APSN, 0x04)
        Name (APSS, Package (0x1F)
        {
            /* High Frequency Modes (turbo) */
            Package (0x06) { 0x0ED8, 0x013880, 0x0A, 0x0A, 0x2600, 0x2600 },
            Package (0x06) { 0x0E74, 0x013880, 0x0A, 0x0A, 0x2500, 0x2500 },
            Package (0x06) { 0x0E10, 0x013880, 0x0A, 0x0A, 0x2400, 0x2400 },
            Package (0x06) { 0x0DAC, 0x013880, 0x0A, 0x0A, 0x2300, 0x2300 },
            /* High Frequency Modes (non-turbo) */
            Package (0x06) { 0x0D48, 0x013880, 0x0A, 0x0A, 0x2200, 0x2200 },
            Package (0x06) { 0x0CE4, 0x012BDF, 0x0A, 0x0A, 0x2100, 0x2100 },
            Package (0x06) { 0x0C80, 0x011F78, 0x0A, 0x0A, 0x2000, 0x2000 },
            Package (0x06) { 0x0C1C, 0x01134B, 0x0A, 0x0A, 0x1F00, 0x1F00 },
            Package (0x06) { 0x0BB8, 0x010757, 0x0A, 0x0A, 0x1E00, 0x1E00 },
            Package (0x06) { 0x0B54, 0x00FB9D, 0x0A, 0x0A, 0x1D00, 0x1D00 },
            Package (0x06) { 0x0AF0, 0x00F01A, 0x0A, 0x0A, 0x1C00, 0x1C00 },
            Package (0x06) { 0x0A8C, 0x00E4D0, 0x0A, 0x0A, 0x1B00, 0x1B00 },
            Package (0x06) { 0x0A28, 0x00D9BD, 0x0A, 0x0A, 0x1A00, 0x1A00 },
            Package (0x06) { 0x09C4, 0x00CEE1, 0x0A, 0x0A, 0x1900, 0x1900 },
            Package (0x06) { 0x0960, 0x00C43B, 0x0A, 0x0A, 0x1800, 0x1800 },
            Package (0x06) { 0x08FC, 0x00B9CC, 0x0A, 0x0A, 0x1700, 0x1700 },
            Package (0x06) { 0x0898, 0x00AF92, 0x0A, 0x0A, 0x1600, 0x1600 },
            Package (0x06) { 0x0834, 0x00A58D, 0x0A, 0x0A, 0x1500, 0x1500 },
            Package (0x06) { 0x07D0, 0x009BBD, 0x0A, 0x0A, 0x1400, 0x1400 },
            Package (0x06) { 0x076C, 0x009222, 0x0A, 0x0A, 0x1300, 0x1300 },
            Package (0x06) { 0x0708, 0x0088BA, 0x0A, 0x0A, 0x1200, 0x1200 },
            Package (0x06) { 0x06A4, 0x007F85, 0x0A, 0x0A, 0x1100, 0x1100 },
            Package (0x06) { 0x0640, 0x007684, 0x0A, 0x0A, 0x1000, 0x1000 },
            Package (0x06) { 0x05DC, 0x006DB5, 0x0A, 0x0A, 0x0F00, 0x0F00 },
            Package (0x06) { 0x0578, 0x006517, 0x0A, 0x0A, 0x0E00, 0x0E00 },
            Package (0x06) { 0x0514, 0x005CAC, 0x0A, 0x0A, 0x0D00, 0x0D00 },
            Package (0x06) { 0x04B0, 0x005471, 0x0A, 0x0A, 0x0C00, 0x0C00 },
            Package (0x06) { 0x044C, 0x004C67, 0x0A, 0x0A, 0x0B00, 0x0B00 },
            Package (0x06) { 0x03E8, 0x00448D, 0x0A, 0x0A, 0x0A00, 0x0A00 },
            Package (0x06) { 0x0384, 0x003CE3, 0x0A, 0x0A, 0x0900, 0x0900 },
            /* Low Frequency Mode */
            Package (0x06) { 0x0320, 0x003568, 0x0A, 0x0A, 0x0800, 0x0800 }
        })

        Method (ACST, 0, NotSerialized)
        {
            Store ("Method CPU0.ACST Called", Debug)
            Store ("CPU0 C-States    : 13", Debug)

            /* Low Power Modes for CPU0 */
            Return (Package (0x05)
            {
                One,
                0x03,
                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000000, // Address
                            0x01,               // Access Size
                            )
                    },
                    One,
                    Zero,
                    0x03E8
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000010, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x03,
                    0xCD,
                    0x01F4
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000020, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x06,
                    0xF5,
                    0x015E
                }
            })
        }

        Method (_DSM, 4, NotSerialized)
        {
            Store ("Method CPU0._DSM Called", Debug)

            If (LEqual (Arg2, Zero))
            {
                Return (Buffer (One)
                {
                    0x03
                })
            }

            Return (Package (0x02)
            {
                "plugin-type",
                One
            })
        }
    }

    Scope (\_SB.CPU1)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.CPU1.APSS Called", Debug)

            Return (\_SB.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Store ("Method CPU1.ACST Called", Debug)
            Store ("CPU1 C-States    : 13", Debug)

            /* Low Power Modes for CPU1 */
            Return (Package (0x05)
            {
                One,
                0x03,
                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000000, // Address
                            0x01,               // Access Size
                            )
                    },
                    One,
                    0x03E8,
                    0x03E8
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000020, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x03,
                    0xC6,
                    0xC8
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000030, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x06,
                    0xF5,
                    0x015E
                }
            })
        }
    }

    Scope (\_SB.CPU2)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.CPU2.APSS Called", Debug)

            Return (\_SB.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.CPU1.ACST ()) }
    }

    Scope (\_SB.CPU3)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.CPU3.APSS Called", Debug)

            Return (\_SB.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.CPU1.ACST ()) }
    }

    Scope (\_SB.CPU4)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.CPU4.APSS Called", Debug)

            Return (\_SB.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.CPU1.ACST ()) }
    }

    Scope (\_SB.CPU5)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.CPU5.APSS Called", Debug)

            Return (\_SB.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.CPU1.ACST ()) }
    }

    Scope (\_SB.CPU6)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.CPU6.APSS Called", Debug)

            Return (\_SB.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.CPU1.ACST ()) }
    }

    Scope (\_SB.CPU7)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method _SB.CPU7.APSS Called", Debug)

            Return (\_SB.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB.CPU1.ACST ()) }
    }
}
