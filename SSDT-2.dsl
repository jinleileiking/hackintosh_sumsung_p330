/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20120320-64 [Mar 21 2012]
 * Copyright (c) 2000 - 2012 Intel Corporation
 * 
 * Disassembly of /Extra/ssdt-2.aml, Wed May  1 01:46:19 2013
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000303 (771)
 *     Revision         0x01
 *     Checksum         0x83
 *     OEM ID           "PmRef"
 *     OEM Table ID     "ApIst"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20061109 (537268489)
 */

DefinitionBlock ("/Extra/ssdt-2.aml", "SSDT", 1, "PmRef", "ApIst", 0x00003000)
{
    External (\_PR_.CPU7, DeviceObj)
    External (\_PR_.CPU6, DeviceObj)
    External (\_PR_.CPU5, DeviceObj)
    External (\_PR_.CPU4, DeviceObj)
    External (\_PR_.CPU3, DeviceObj)
    External (\_PR_.CPU2, DeviceObj)
    External (\_PR_.CPU1, DeviceObj)
    External (\_PR_.CPU0._PSD, IntObj)
    External (\_PR_.CPU0._PSS, IntObj)
    External (\_PR_.CPU0._PCT, IntObj)
    External (\_PR_.CPU0._PPC, IntObj)

    Scope (\_PR.CPU1)
    {
        Method (_PPC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PPC)
        }

        Method (_PCT, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PCT)
        }

        Method (_PSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSS)
        }

        Method (_PSD, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSD)
        }
    }

    Scope (\_PR.CPU2)
    {
        Method (_PPC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PPC)
        }

        Method (_PCT, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PCT)
        }

        Method (_PSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSS)
        }

        Method (_PSD, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSD)
        }
    }

    Scope (\_PR.CPU3)
    {
        Method (_PPC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PPC)
        }

        Method (_PCT, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PCT)
        }

        Method (_PSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSS)
        }

        Method (_PSD, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSD)
        }
    }

    Scope (\_PR.CPU4)
    {
        Method (_PPC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PPC)
        }

        Method (_PCT, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PCT)
        }

        Method (_PSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSS)
        }

        Method (_PSD, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSD)
        }
    }

    Scope (\_PR.CPU5)
    {
        Method (_PPC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PPC)
        }

        Method (_PCT, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PCT)
        }

        Method (_PSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSS)
        }

        Method (_PSD, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSD)
        }
    }

    Scope (\_PR.CPU6)
    {
        Method (_PPC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PPC)
        }

        Method (_PCT, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PCT)
        }

        Method (_PSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSS)
        }

        Method (_PSD, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSD)
        }
    }

    Scope (\_PR.CPU7)
    {
        Method (_PPC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PPC)
        }

        Method (_PCT, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PCT)
        }

        Method (_PSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSS)
        }

        Method (_PSD, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSD)
        }
    }
}

