.class public Lcom/sprint/dsa/diagnostics/Diagnostics;
.super Ljava/lang/Object;
.source "Diagnostics.java"

# interfaces
.implements Lcom/sprint/dsa/diagnostics/DiagnosticListener;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sprint/dsa/diagnostics/DiagnosticListener;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/sprint/dsa/diagnostics/Diagnostic;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/diagnostics/Diagnostic;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/diagnostics/DiagnosticListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mContext:Landroid/content/Context;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mInstances:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mListeners:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/diagnostics/DiagnosticStub;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, stubs:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/diagnostics/DiagnosticStub;>;"
    invoke-direct {p0, p1}, Lcom/sprint/dsa/diagnostics/Diagnostics;-><init>(Landroid/content/Context;)V

    .line 30
    if-eqz p2, :cond_f

    .line 31
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 36
    :cond_f
    return-void

    .line 31
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    .line 33
    .local v0, stub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    invoke-virtual {p0, v0}, Lcom/sprint/dsa/diagnostics/Diagnostics;->getDiagnostic(Lcom/sprint/dsa/diagnostics/DiagnosticStub;)Lcom/sprint/dsa/diagnostics/Diagnostic;

    goto :goto_9
.end method


# virtual methods
.method public addListener(Lcom/sprint/dsa/diagnostics/DiagnosticListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 174
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_d
    return-void
.end method

.method public createReceiverIntentFilter()Landroid/content/IntentFilter;
    .registers 5

    .prologue
    .line 39
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 41
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mInstances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    .line 45
    return-object v1

    .line 41
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/Diagnostic;

    .line 42
    .local v0, diag:Lcom/sprint/dsa/diagnostics/Diagnostic;
    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/Diagnostic;->updateReceiverIntentFilter(Landroid/content/IntentFilter;)V

    goto :goto_b
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mInstances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDiagnostic(I)Lcom/sprint/dsa/diagnostics/Diagnostic;
    .registers 3
    .parameter "i"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mInstances:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/Diagnostic;

    return-object v0
.end method

.method public getDiagnostic(Lcom/sprint/dsa/diagnostics/DiagnosticStub;)Lcom/sprint/dsa/diagnostics/Diagnostic;
    .registers 8
    .parameter "stub"

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mInstances:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_33

    .line 100
    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, key:Ljava/lang/String;
    if-nez v1, :cond_32

    .line 102
    const-string v3, "power.config"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 103
    new-instance v1, Lcom/sprint/dsa/diagnostics/PowerConfigDiagnostic;

    .end local v1           #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/sprint/dsa/diagnostics/PowerConfigDiagnostic;-><init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 151
    .restart local v1       #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    :cond_22
    :goto_22
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/sprint/dsa/diagnostics/Diagnostic;->isCapable()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 152
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mInstances:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {v1, p0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->addListener(Lcom/sprint/dsa/diagnostics/DiagnosticListener;)V

    .line 161
    :cond_32
    return-object v1

    .line 93
    .end local v2           #key:Ljava/lang/String;
    :cond_33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/Diagnostic;

    .line 94
    .local v0, diag:Lcom/sprint/dsa/diagnostics/Diagnostic;
    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 95
    move-object v1, v0

    goto :goto_7

    .line 105
    .end local v0           #diag:Lcom/sprint/dsa/diagnostics/Diagnostic;
    .restart local v2       #key:Ljava/lang/String;
    :cond_49
    const-string v3, "power.usage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 106
    new-instance v1, Lcom/sprint/dsa/diagnostics/PowerUsageDiagnostic;

    .end local v1           #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/sprint/dsa/diagnostics/PowerUsageDiagnostic;-><init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .restart local v1       #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    goto :goto_22

    .line 108
    :cond_59
    const-string v3, "bluetooth"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 109
    new-instance v1, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;

    .end local v1           #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/sprint/dsa/diagnostics/BluetoothDiagnostic;-><init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .restart local v1       #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    goto :goto_22

    .line 111
    :cond_69
    const-string v3, "wifi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 112
    new-instance v1, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;

    .end local v1           #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/sprint/dsa/diagnostics/WifiDiagnostic;-><init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .restart local v1       #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    goto :goto_22

    .line 114
    :cond_79
    const-string v3, "location"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 115
    new-instance v1, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;

    .end local v1           #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/sprint/dsa/diagnostics/LocationDiagnostic;-><init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .restart local v1       #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    goto :goto_22

    .line 117
    :cond_89
    const-string v3, "3g"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 118
    new-instance v1, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;

    .end local v1           #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/sprint/dsa/diagnostics/MobileDiagnostic;-><init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .restart local v1       #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    goto :goto_22

    .line 120
    :cond_99
    const-string v3, "wimax"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 121
    new-instance v1, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;

    .end local v1           #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/sprint/dsa/diagnostics/WimaxDiagnostic;-><init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .restart local v1       #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    goto/16 :goto_22

    .line 123
    :cond_aa
    const-string v3, "usb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 124
    new-instance v1, Lcom/sprint/dsa/diagnostics/UsbDiagnostic;

    .end local v1           #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/sprint/dsa/diagnostics/UsbDiagnostic;-><init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .restart local v1       #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    goto/16 :goto_22

    .line 126
    :cond_bb
    const-string v3, "screen"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 127
    new-instance v1, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;

    .end local v1           #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;-><init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .restart local v1       #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    goto/16 :goto_22

    .line 129
    :cond_cc
    const-string v3, "sync"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 130
    new-instance v1, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;

    .end local v1           #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/sprint/dsa/diagnostics/SyncDiagnostic;-><init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .restart local v1       #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    goto/16 :goto_22

    .line 132
    :cond_dd
    const-string v3, "sdcard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 133
    new-instance v1, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;

    .end local v1           #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;-><init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .restart local v1       #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    goto/16 :goto_22

    .line 135
    :cond_ee
    const-string v3, "internalStorage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 136
    new-instance v1, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;

    .end local v1           #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/sprint/dsa/diagnostics/InternalStorageDiagnostic;-><init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .restart local v1       #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    goto/16 :goto_22

    .line 138
    :cond_ff
    const-string v3, "memory"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 139
    new-instance v1, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;

    .end local v1           #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/sprint/dsa/diagnostics/MemoryDiagnostic;-><init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .restart local v1       #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    goto/16 :goto_22

    .line 141
    :cond_110
    const-string v3, "camera"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_121

    .line 142
    new-instance v1, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;

    .end local v1           #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/sprint/dsa/diagnostics/CameraDiagnostic;-><init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .restart local v1       #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    goto/16 :goto_22

    .line 144
    :cond_121
    const-string v3, "notification"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 145
    new-instance v1, Lcom/sprint/dsa/diagnostics/NotificationDiagnostic;

    .end local v1           #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/sprint/dsa/diagnostics/NotificationDiagnostic;-><init>(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .restart local v1       #instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    goto/16 :goto_22
.end method

.method public getDiagnostic(Ljava/lang/String;)Lcom/sprint/dsa/diagnostics/Diagnostic;
    .registers 6
    .parameter "key"

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, instance:Lcom/sprint/dsa/diagnostics/Diagnostic;
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mInstances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e

    .line 87
    return-object v1

    .line 82
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/Diagnostic;

    .line 83
    .local v0, diag:Lcom/sprint/dsa/diagnostics/Diagnostic;
    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 84
    move-object v1, v0

    goto :goto_7
.end method

.method public getPowerUsages()[I
    .registers 6

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, total:I
    const/4 v2, 0x0

    .line 195
    .local v2, usage:I
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mInstances:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_18

    .line 201
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    return-object v3

    .line 195
    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/Diagnostic;

    .line 196
    .local v0, diag:Lcom/sprint/dsa/diagnostics/Diagnostic;
    instance-of v4, v0, Lcom/sprint/dsa/diagnostics/PowerUser;

    if-eqz v4, :cond_8

    .line 197
    sget v4, Lcom/sprint/dsa/diagnostics/PowerUsage;->MAX_VALUE:I

    add-int/2addr v1, v4

    .line 198
    check-cast v0, Lcom/sprint/dsa/diagnostics/PowerUser;

    .end local v0           #diag:Lcom/sprint/dsa/diagnostics/Diagnostic;
    invoke-interface {v0}, Lcom/sprint/dsa/diagnostics/PowerUser;->getPowerUsage()Lcom/sprint/dsa/diagnostics/PowerUsage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sprint/dsa/diagnostics/PowerUsage;->getValue()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_8
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sprint/dsa/diagnostics/Diagnostic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mInstances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public onCleanup()V
    .registers 4

    .prologue
    .line 74
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mInstances:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 77
    return-void

    .line 74
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/Diagnostic;

    .line 75
    .local v0, diag:Lcom/sprint/dsa/diagnostics/Diagnostic;
    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->onCleanup()V

    goto :goto_6
.end method

.method public onStatusChange(Lcom/sprint/dsa/diagnostics/Diagnostic;)V
    .registers 5
    .parameter "diagnostic"

    .prologue
    .line 182
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 185
    return-void

    .line 182
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/DiagnosticListener;

    .line 183
    .local v0, listener:Lcom/sprint/dsa/diagnostics/DiagnosticListener;
    invoke-interface {v0, p1}, Lcom/sprint/dsa/diagnostics/DiagnosticListener;->onStatusChange(Lcom/sprint/dsa/diagnostics/Diagnostic;)V

    goto :goto_6
.end method

.method public prepareTests()V
    .registers 4

    .prologue
    .line 51
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mInstances:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 55
    return-void

    .line 51
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/Diagnostic;

    .line 53
    .local v0, diag:Lcom/sprint/dsa/diagnostics/Diagnostic;
    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->prepareTest()V

    goto :goto_6
.end method

.method public runTest(Ljava/lang/String;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/Diagnostics;->getDiagnostic(Ljava/lang/String;)Lcom/sprint/dsa/diagnostics/Diagnostic;

    move-result-object v0

    .line 67
    .local v0, diag:Lcom/sprint/dsa/diagnostics/Diagnostic;
    if-eqz v0, :cond_9

    .line 68
    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 70
    :cond_9
    return-void
.end method

.method public runTests()V
    .registers 4

    .prologue
    .line 59
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/Diagnostics;->mInstances:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 63
    return-void

    .line 59
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/Diagnostic;

    .line 61
    .local v0, diag:Lcom/sprint/dsa/diagnostics/Diagnostic;
    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    goto :goto_6
.end method
