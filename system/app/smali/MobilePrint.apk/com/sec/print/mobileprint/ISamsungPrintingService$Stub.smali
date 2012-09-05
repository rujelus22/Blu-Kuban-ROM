.class public abstract Lcom/sec/print/mobileprint/ISamsungPrintingService$Stub;
.super Landroid/os/Binder;
.source "ISamsungPrintingService.java"

# interfaces
.implements Lcom/sec/print/mobileprint/ISamsungPrintingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/ISamsungPrintingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/ISamsungPrintingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.print.mobileprint.ISamsungPrintingService"

.field static final TRANSACTION_cancel:I = 0x2

.field static final TRANSACTION_print:I = 0x1

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.sec.print.mobileprint.ISamsungPrintingService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/print/mobileprint/ISamsungPrintingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/print/mobileprint/ISamsungPrintingService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_3
    return-object v0

    .line 39
    :cond_4
    const-string v1, "com.sec.print.mobileprint.ISamsungPrintingService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/print/mobileprint/ISamsungPrintingService;

    if-eqz v1, :cond_13

    .line 41
    check-cast v0, Lcom/sec/print/mobileprint/ISamsungPrintingService;

    goto :goto_3

    .line 43
    :cond_13
    new-instance v0, Lcom/sec/print/mobileprint/ISamsungPrintingService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/print/mobileprint/ISamsungPrintingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 51
    sparse-switch p1, :sswitch_data_80

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 55
    :sswitch_9
    const-string v4, "com.sec.print.mobileprint.ISamsungPrintingService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 60
    :sswitch_f
    const-string v4, "com.sec.print.mobileprint.ISamsungPrintingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_45

    .line 63
    sget-object v4, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;

    .line 69
    .local v0, _arg0:Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_47

    .line 70
    sget-object v4, Lcom/sec/print/mobileprint/pagedata/DocSetInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/print/mobileprint/pagedata/DocSetInterface;

    .line 76
    .local v1, _arg1:Lcom/sec/print/mobileprint/pagedata/DocSetInterface;
    :goto_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_49

    .line 77
    sget-object v4, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;

    .line 82
    .local v2, _arg2:Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;
    :goto_3e
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/print/mobileprint/ISamsungPrintingService$Stub;->print(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;Lcom/sec/print/mobileprint/pagedata/DocSetInterface;Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 66
    .end local v0           #_arg0:Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;
    .end local v1           #_arg1:Lcom/sec/print/mobileprint/pagedata/DocSetInterface;
    .end local v2           #_arg2:Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;
    :cond_45
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;
    goto :goto_22

    .line 73
    :cond_47
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/sec/print/mobileprint/pagedata/DocSetInterface;
    goto :goto_30

    .line 80
    :cond_49
    const/4 v2, 0x0

    .restart local v2       #_arg2:Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;
    goto :goto_3e

    .line 88
    .end local v0           #_arg0:Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;
    .end local v1           #_arg1:Lcom/sec/print/mobileprint/pagedata/DocSetInterface;
    .end local v2           #_arg2:Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;
    :sswitch_4b
    const-string v4, "com.sec.print.mobileprint.ISamsungPrintingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/ISamsungPrintingService$Stub;->cancel()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 95
    :sswitch_57
    const-string v4, "com.sec.print.mobileprint.ISamsungPrintingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/print/mobileprint/IPrintStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/print/mobileprint/IPrintStatusCallback;

    move-result-object v0

    .line 98
    .local v0, _arg0:Lcom/sec/print/mobileprint/IPrintStatusCallback;
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/ISamsungPrintingService$Stub;->registerCallback(Lcom/sec/print/mobileprint/IPrintStatusCallback;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 104
    .end local v0           #_arg0:Lcom/sec/print/mobileprint/IPrintStatusCallback;
    :sswitch_6b
    const-string v4, "com.sec.print.mobileprint.ISamsungPrintingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/print/mobileprint/IPrintStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/print/mobileprint/IPrintStatusCallback;

    move-result-object v0

    .line 107
    .restart local v0       #_arg0:Lcom/sec/print/mobileprint/IPrintStatusCallback;
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/ISamsungPrintingService$Stub;->unregisterCallback(Lcom/sec/print/mobileprint/IPrintStatusCallback;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 51
    nop

    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_4b
        0x3 -> :sswitch_57
        0x4 -> :sswitch_6b
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
