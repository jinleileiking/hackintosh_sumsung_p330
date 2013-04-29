/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20120320-64 [Mar 21 2012]
 * Copyright (c) 2000 - 2012 Intel Corporation
 * 
 * Disassembly of /Extra/SSDT-6.aml, Tue Apr 30 00:02:09 2013
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000934 (2356)
 *     Revision         0x01
 *     Checksum         0x58
 *     OEM ID           "NvdRef"
 *     OEM Table ID     "NvdTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20061109 (537268489)
 */

DefinitionBlock ("/Extra/SSDT-6.aml", "SSDT", 1, "NvdRef", "NvdTabl", 0x00001000)
{
    External (NVHA, MethodObj)    // 1 Arguments
    External (PEBS)
    External (\ECON)
    External (\_SB_.SECS, MethodObj)    // 1 Arguments
    External (\_SB_.PCI0.GFX0, DeviceObj)
    External (\_SB_.PCI0.P0P2, DeviceObj)
    External (\_SB_.PCI0.P0P2.NVID, DeviceObj)
    External (\_SB_.PCI0.LPCB.H_EC.OPST)
    External (\_SB_.PCI0.P0P2.NVID._ADR)

    Scope (\_SB.PCI0.P0P2)
    {
        OperationRegion (RPCI, SystemMemory, Add (PEBS, 0x8000), 0x1000)
        Field (RPCI, DWordAcc, Lock, Preserve)
        {
            Offset (0xB0), 
            ASPM,   2, 
                ,   2, 
            LNKD,   1, 
            Offset (0x1FC), 
                ,   9, 
            SGL1,   1, 
            Offset (0x214), 
            Offset (0x216), 
            LNKS,   4, 
            Offset (0x224), 
            Offset (0x225), 
            DQDA,   1, 
            Offset (0xC28), 
            HCLQ,   1, 
            Offset (0xC34), 
                ,   30, 
            PEDQ,   1, 
            PIDQ,   1, 
            Offset (0xDFC), 
            PEPO,   3, 
            Offset (0xE08), 
                ,   31, 
            ROE0,   1, 
            Offset (0xE28), 
                ,   31, 
            ROE1,   1, 
            Offset (0xE48), 
                ,   31, 
            ROE2,   1, 
            Offset (0xE68), 
                ,   31, 
            ROE3,   1, 
            Offset (0xE88), 
                ,   31, 
            ROE4,   1, 
            Offset (0xEA8), 
                ,   31, 
            ROE5,   1, 
            Offset (0xEC8), 
                ,   31, 
            ROE6,   1, 
            Offset (0xEE8), 
                ,   31, 
            ROE7,   1, 
            Offset (0xF08), 
                ,   31, 
            ROE8,   1, 
            Offset (0xF28), 
                ,   31, 
            ROE9,   1, 
            Offset (0xF48), 
                ,   31, 
            ROEA,   1, 
            Offset (0xF68), 
                ,   31, 
            ROEB,   1, 
            Offset (0xF88), 
                ,   31, 
            ROEC,   1, 
            Offset (0xFA8), 
                ,   31, 
            ROED,   1, 
            Offset (0xFC8), 
                ,   31, 
            ROEE,   1, 
            Offset (0xFE8), 
                ,   31, 
            ROEF,   1
        }

        OperationRegion (DMIB, SystemMemory, 0xFED18000, 0x1000)
        Field (DMIB, DWordAcc, Lock, Preserve)
        {
            Offset (0xC34), 
            LLGE,   1, 
                ,   28, 
            PCGE,   1, 
                ,   1, 
            LGGE,   1
        }
    }

    Scope (\_SB.PCI0.P0P2.NVID)
    {
        OperationRegion (NVOP, SystemMemory, NVHA (0x00010200), Field (NVOP, AnyAcc, NoLock, Preserve)
            {
                NVSG,   128, 
                NVSZ,   32, 
                NVVR,   32, 
                Offset (0x100), 
                NVHO,   32, 
                RVBS,   32, 
                NVDD,   16, 
                Offset (0x200), 
                RBF1,   262144, 
                RBF2,   262144
            })
        OperationRegion (GPIO, SystemIO, 0x1180, 0x60)
        Field (GPIO, ByteAcc, Lock, Preserve)
        {
            Offset (0x0C), 
            Offset (0x0E), 
            PO16,   1, 
            PI17,   1, 
            Offset (0x38), 
                ,   4, 
            PO36,   1, 
            PI37,   1, 
                ,   14, 
            PO52,   1, 
            PO53,   1, 
            Offset (0x48), 
                ,   3, 
            PO67,   1
        }

        OperationRegion (BPCI, SystemMemory, Add (PEBS, 0x00200000), 0x0800)
        Field (BPCI, ByteAcc, NoLock, Preserve)
        {
            VGAR,   2048, 
            Offset (0x48B), 
            VGHA,   8
        }

        Name (VGAB, Buffer (0x0100) {})
        Method (_INI, 0, NotSerialized)
        {
            Store (Zero, \_SB.PCI0.P0P2.NVID._ADR)
        }

        Method (_ON, 0, Serialized)
        {
            If (LEqual (PO36, One))
            {
                Store (Zero, PO16)
                Sleep (0x32)
                Store (Zero, PO36)
                Sleep (0x32)
                Store (One, PO16)
                Sleep (0x32)
                Store (Zero, LLGE)
                Store (Zero, LGGE)
                Store (Zero, PEPO)
                Store (Zero, ROE0)
                Store (Zero, ROE1)
                Store (Zero, ROE2)
                Store (Zero, ROE3)
                Store (Zero, ROE4)
                Store (Zero, ROE5)
                Store (Zero, ROE6)
                Store (Zero, ROE7)
                Store (Zero, ROE8)
                Store (Zero, ROE9)
                Store (Zero, ROEA)
                Store (Zero, ROEB)
                Store (Zero, ROEC)
                Store (Zero, ROED)
                Store (Zero, ROEE)
                Store (Zero, ROEF)
                Store (Zero, HCLQ)
                Store (Zero, SGL1)
                Store (Zero, PEDQ)
                Store (Zero, LNKD)
                Store (One, LLGE)
                Store (One, LGGE)
                While (LLess (LNKS, 0x07))
                {
                    Sleep (One)
                }

                Store (Zero, VGHA)
                Store (VGAB, VGAR)
                Sleep (0x32)
                If (LEqual (\ECON, Zero))
                {
                    \_SB.SECS (0xB0)
                }
                Else
                {
                    Store (One, \_SB.PCI0.LPCB.H_EC.OPST)
                }
            }
        }

        Method (_OFF, 0, Serialized)
        {
            Store (VGAR, VGAB)
            Sleep (0x32)
            Store (Zero, LLGE)
            Store (Zero, LGGE)
            Store (One, LNKD)
            While (LNotEqual (LNKS, Zero))
            {
                Sleep (One)
            }

            Store (One, PEDQ)
            Store (Zero, LNKD)
            While (LNotEqual (PIDQ, One))
            {
                Sleep (One)
            }

            Store (One, HCLQ)
            Store (One, SGL1)
            Store (0x07, PEPO)
            Store (One, ROE0)
            Store (One, ROE1)
            Store (One, ROE2)
            Store (One, ROE3)
            Store (One, ROE4)
            Store (One, ROE5)
            Store (One, ROE6)
            Store (One, ROE7)
            Store (One, ROE8)
            Store (One, ROE9)
            Store (One, ROEA)
            Store (One, ROEB)
            Store (One, ROEC)
            Store (One, ROED)
            Store (One, ROEE)
            Store (One, ROEF)
            Store (One, LLGE)
            Store (One, LGGE)
            Store (Zero, PO16)
            Sleep (0x32)
            Store (One, PO36)
            Sleep (0x32)
            If (LEqual (\ECON, Zero))
            {
                \_SB.SECS (0xB1)
            }
            Else
            {
                Store (Zero, \_SB.PCI0.LPCB.H_EC.OPST)
            }
        }

        Name (_IRC, Zero)
        Method (_STA, 0, Serialized)
        {
            Return (0x0F)
        }

        Method (_ROM, 2, NotSerialized)
        {
            Store (Arg0, Local0)
            Store (Arg1, Local1)
            If (LGreater (Local1, 0x1000))
            {
                Store (0x1000, Local1)
            }

            If (LGreater (Local0, 0x00010000))
            {
                Return (Buffer (Local1)
                {
                     0x00
                })
            }

            If (LGreater (Local0, RVBS))
            {
                Return (Buffer (Local1)
                {
                     0x00
                })
            }

            Multiply (Local1, 0x08, Local3)
            Name (ROM1, Buffer (0x8000)
            {
                 0x00
            })
            Name (ROM2, Buffer (Local1)
            {
                 0x00
            })
            If (LLess (Local0, 0x8000))
            {
                Store (RBF1, ROM1)
            }
            Else
            {
                Subtract (Local0, 0x8000, Local0)
                Store (RBF2, ROM1)
            }

            Multiply (Local0, 0x08, Local2)
            CreateField (ROM1, Local2, Local3, TMPB)
            Store (TMPB, ROM2)
            Return (ROM2)
        }

        Name (OMPR, 0x02)
        Name (DGOS, Zero)
        Method (_PS0, 0, NotSerialized)
        {
            If (LNotEqual (DGOS, Zero))
            {
                \_SB.PCI0.P0P2.NVID._ON ()
                Store (Zero, DGOS)
            }
        }

        Method (_PS3, 0, NotSerialized)
        {
            If (LEqual (OMPR, 0x03))
            {
                If (LEqual (DGOS, Zero))
                {
                    \_SB.PCI0.P0P2.NVID._OFF ()
                    Store (One, DGOS)
                }

                Store (0x02, OMPR)
            }
        }

        Method (_DSM, 4, Serialized)
        {
            Name (_T_0, Zero)
            Store (And (Arg2, 0xFF), Local0)
            If (LEqual (Arg0, Buffer (0x10)
                    {
                        /* 0000 */   0xF8, 0xD8, 0x86, 0xA4, 0xDA, 0x0B, 0x1B, 0x47,
                        /* 0008 */   0xA7, 0x2B, 0x60, 0x42, 0xA6, 0xB5, 0xBE, 0xE0
                    }))
            {
                If (LNotEqual (Arg1, 0x0100))
                {
                    Return (0x80000002)
                }

                Store (ToInteger (Arg2), _T_0)
                If (LEqual (_T_0, Zero))
                {
                    Store (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00
                        }, Local0)
                    Divide (Zero, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1
                        ))
                    Divide (0x1A, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1
                        ))
                    Divide (0x10, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1
                        ))
                    Return (Local0)
                }
                Else
                {
                    If (LEqual (_T_0, 0x10))
                    {
                        Return (GOBT (Arg3))
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x1A))
                        {
                            CreateField (Arg3, 0x18, 0x02, OPCE)
                            CreateField (Arg3, Zero, One, FLCH)
                            If (ToInteger (FLCH))
                            {
                                Store (OPCE, OMPR)
                            }

                            Store (Buffer (0x04)
                                {
                                     0x00, 0x00, 0x00, 0x00
                                }, Local0)
                            CreateField (Local0, Zero, One, OPEN)
                            CreateField (Local0, 0x03, 0x02, CGCS)
                            CreateField (Local0, 0x06, One, SHPC)
                            CreateField (Local0, 0x18, 0x03, DGPC)
                            Store (One, OPEN)
                            Store (One, DGPC)
                            If (LEqual (PO36, Zero))
                            {
                                Store (0x03, CGCS)
                            }

                            Return (Local0)
                        }
                    }
                }

                Return (0x80000002)
            }

            Return (0x80000001)
        }

        Method (GOBT, 1, NotSerialized)
        {
            Name (OPVK, Buffer (0xE2)
            {
                /* 0000 */   0xEB, 0xA7, 0x7E, 0x33, 0x7C, 0x52, 0x07, 0xC5,
                /* 0008 */   0x4B, 0x56, 0xE2, 0x00, 0x00, 0x00, 0x01, 0x00,
                /* 0010 */   0x32, 0x37, 0x34, 0x35, 0x39, 0x31, 0x32, 0x35,
                /* 0018 */   0x33, 0x36, 0x38, 0x37, 0x47, 0x65, 0x6E, 0x75,
                /* 0020 */   0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,
                /* 0028 */   0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,
                /* 0030 */   0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,
                /* 0038 */   0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,
                /* 0040 */   0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,
                /* 0048 */   0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,
                /* 0050 */   0x6F, 0x72, 0x20, 0x73, 0x61, 0x6D, 0x73, 0x75,
                /* 0058 */   0x6E, 0x67, 0x20, 0x62, 0x65, 0x72, 0x6B, 0x65,
                /* 0060 */   0x6C, 0x65, 0x79, 0x20, 0x6E, 0x31, 0x31, 0x20,
                /* 0068 */   0x2D, 0x20, 0x5A, 0x56, 0x3E, 0x34, 0x27, 0x3B,
                /* 0070 */   0x2A, 0x3A, 0x2E, 0x27, 0x52, 0x5A, 0x34, 0x47,
                /* 0078 */   0x28, 0x53, 0x59, 0x4D, 0x3E, 0x4C, 0x29, 0x56,
                /* 0080 */   0x2B, 0x3F, 0x51, 0x5E, 0x5C, 0x53, 0x38, 0x23,
                /* 0088 */   0x55, 0x5E, 0x55, 0x29, 0x4E, 0x36, 0x2B, 0x3C,
                /* 0090 */   0x57, 0x32, 0x50, 0x36, 0x52, 0x48, 0x34, 0x56,
                /* 0098 */   0x2A, 0x21, 0x20, 0x2D, 0x20, 0x43, 0x6F, 0x70,
                /* 00A0 */   0x79, 0x72, 0x69, 0x67, 0x68, 0x74, 0x20, 0x32,
                /* 00A8 */   0x30, 0x30, 0x39, 0x20, 0x4E, 0x56, 0x49, 0x44,
                /* 00B0 */   0x49, 0x41, 0x20, 0x43, 0x6F, 0x72, 0x70, 0x6F,
                /* 00B8 */   0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x41,
                /* 00C0 */   0x6C, 0x6C, 0x20, 0x52, 0x69, 0x67, 0x68, 0x74,
                /* 00C8 */   0x73, 0x20, 0x52, 0x65, 0x73, 0x65, 0x72, 0x76,
                /* 00D0 */   0x65, 0x64, 0x2D, 0x32, 0x37, 0x34, 0x35, 0x39,
                /* 00D8 */   0x31, 0x32, 0x35, 0x33, 0x36, 0x38, 0x37, 0x28,
                /* 00E0 */   0x52, 0x29
            })
            Name (GEVK, Buffer (0xE2)
            {
                /* 0000 */   0x2C, 0x2F, 0xF9, 0x1C, 0x55, 0xF8, 0x18, 0xFF,
                /* 0008 */   0x4B, 0x56, 0xE2, 0x00, 0x00, 0x00, 0x01, 0x00,
                /* 0010 */   0x32, 0x37, 0x34, 0x35, 0x39, 0x31, 0x32, 0x35,
                /* 0018 */   0x33, 0x36, 0x38, 0x37, 0x47, 0x65, 0x6E, 0x75,
                /* 0020 */   0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,
                /* 0028 */   0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,
                /* 0030 */   0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,
                /* 0038 */   0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,
                /* 0040 */   0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,
                /* 0048 */   0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,
                /* 0050 */   0x6F, 0x72, 0x20, 0x73, 0x61, 0x6D, 0x73, 0x75,
                /* 0058 */   0x6E, 0x67, 0x20, 0x68, 0x6F, 0x75, 0x73, 0x74,
                /* 0060 */   0x6F, 0x6E, 0x31, 0x33, 0x20, 0x62, 0x75, 0x20,
                /* 0068 */   0x2D, 0x20, 0x33, 0x21, 0x4A, 0x46, 0x38, 0x4D,
                /* 0070 */   0x27, 0x31, 0x29, 0x3A, 0x57, 0x59, 0x3B, 0x4F,
                /* 0078 */   0x51, 0x45, 0x52, 0x39, 0x2B, 0x3C, 0x5A, 0x49,
                /* 0080 */   0x40, 0x56, 0x48, 0x32, 0x32, 0x32, 0x5E, 0x43,
                /* 0088 */   0x3D, 0x39, 0x3F, 0x35, 0x33, 0x26, 0x3D, 0x30,
                /* 0090 */   0x21, 0x47, 0x2A, 0x49, 0x50, 0x48, 0x3A, 0x5F,
                /* 0098 */   0x56, 0x56, 0x20, 0x2D, 0x20, 0x43, 0x6F, 0x70,
                /* 00A0 */   0x79, 0x72, 0x69, 0x67, 0x68, 0x74, 0x20, 0x32,
                /* 00A8 */   0x30, 0x30, 0x39, 0x20, 0x4E, 0x56, 0x49, 0x44,
                /* 00B0 */   0x49, 0x41, 0x20, 0x43, 0x6F, 0x72, 0x70, 0x6F,
                /* 00B8 */   0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x41,
                /* 00C0 */   0x6C, 0x6C, 0x20, 0x52, 0x69, 0x67, 0x68, 0x74,
                /* 00C8 */   0x73, 0x20, 0x52, 0x65, 0x73, 0x65, 0x72, 0x76,
                /* 00D0 */   0x65, 0x64, 0x2D, 0x32, 0x37, 0x34, 0x35, 0x39,
                /* 00D8 */   0x31, 0x32, 0x35, 0x33, 0x36, 0x38, 0x37, 0x28,
                /* 00E0 */   0x52, 0x29
            })
            Name (TPVK, Buffer (One)
            {
                 0x00
            })
            CreateWordField (Arg0, 0x02, USRG)
            If (LEqual (USRG, 0x564B))
            {
                If (LEqual (NVDD, 0x0A72))
                {
                    Return (OPVK)
                }
                Else
                {
                    If (LEqual (NVDD, 0x0A70))
                    {
                        Return (GEVK)
                    }
                    Else
                    {
                        Return (TPVK)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (\_SB.PCI0.GFX0)
    {
        Method (_DSM, 4, Serialized)
        {
            Return (\_SB.PCI0.P0P2.NVID._DSM (Arg0, Arg1, Arg2, Arg3))
        }
    }
}

