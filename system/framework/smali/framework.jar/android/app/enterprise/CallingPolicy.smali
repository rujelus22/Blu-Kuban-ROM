.class public Landroid/app/enterprise/CallingPolicy;
.super Ljava/lang/Object;
.source "CallingPolicy.java"


# static fields
.field public static final CB_FACILITY_BAIC:Ljava/lang/String; = "AI"

.field public static final CB_FACILITY_BAICr:Ljava/lang/String; = "IR"

.field public static final CB_FACILITY_BAOC:Ljava/lang/String; = "AO"

.field public static final CB_FACILITY_BAOIC:Ljava/lang/String; = "OI"

.field public static final CB_FACILITY_BAOICxH:Ljava/lang/String; = "OX"

.field public static final CF_ACTION_DISABLE:I = 0x0

.field public static final CF_ACTION_REGISTRATION:I = 0x3

.field public static final CF_REASON_BUSY:I = 0x1

.field public static final CF_REASON_NOT_REACHABLE:I = 0x3

.field public static final CF_REASON_NO_REPLY:I = 0x2

.field public static final CF_REASON_UNCONDITIONAL:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/ICallingPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string v0, "CallingPolicy"

    sput-object v0, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "calling_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/ICallingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ICallingPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    .line 23
    return-void
.end method


# virtual methods
.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "oldPwd"
    .parameter "newPwd"

    .prologue
    .line 159
    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    if-eqz v1, :cond_13

    .line 161
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ICallingPolicy;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 166
    :goto_a
    return v1

    .line 162
    :catch_b
    move-exception v0

    .line 163
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "changeBarringPassword - Failed talking with Phone service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getCallBarringOption(Ljava/lang/String;)Z
    .registers 5
    .parameter "cbFacility"

    .prologue
    .line 138
    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    if-eqz v1, :cond_13

    .line 140
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ICallingPolicy;->getCallBarringOption(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 145
    :goto_a
    return v1

    .line 141
    :catch_b
    move-exception v0

    .line 142
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getCallBarringOption - Failed talking with Phone service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getCallForwardingOption(I)Ljava/lang/String;
    .registers 6
    .parameter "cfReason"

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, output:Ljava/lang/String;
    iget-object v2, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    if-eqz v2, :cond_b

    .line 93
    :try_start_5
    iget-object v2, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/ICallingPolicy;->getCallForwardingOption(I)Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    .line 99
    :cond_b
    :goto_b
    return-object v1

    .line 94
    :catch_c
    move-exception v0

    .line 95
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getCallForwardingOption - Failed talking with Phone service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    const-string v1, "Failed talking with Phone service"

    goto :goto_b
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "cbAction"
    .parameter "cbFacility"
    .parameter "password"

    .prologue
    .line 117
    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    if-eqz v1, :cond_14

    .line 119
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/ICallingPolicy;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 125
    :goto_a
    return v1

    .line 121
    :catch_b
    move-exception v0

    .line 122
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setCallBarringOption - Failed talking with Phone service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setCallForwardingOption(ZILjava/lang/String;I)Z
    .registers 9
    .parameter "cfAction"
    .parameter "cfReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, output:Z
    iget-object v2, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    if-eqz v2, :cond_b

    .line 72
    :try_start_5
    iget-object v2, p0, Landroid/app/enterprise/CallingPolicy;->mService:Landroid/app/enterprise/ICallingPolicy;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/app/enterprise/ICallingPolicy;->setCallForwardingOption(ZILjava/lang/String;I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 77
    :cond_b
    :goto_b
    return v1

    .line 73
    :catch_c
    move-exception v0

    .line 74
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/CallingPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCallForwardingOption - Failed talking with Phone service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method
