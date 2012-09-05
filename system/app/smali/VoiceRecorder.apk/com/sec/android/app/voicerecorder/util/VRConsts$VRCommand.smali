.class public final enum Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;
.super Ljava/lang/Enum;
.source "VRConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/util/VRConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VRCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

.field public static final enum CANCEL:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

.field public static final enum IDLE:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

.field public static final enum PAUSE:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

.field public static final enum RECORD:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

.field public static final enum RESUME:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

.field public static final enum SAVE:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->IDLE:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    new-instance v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    const-string v1, "RECORD"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->RECORD:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    new-instance v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->PAUSE:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    new-instance v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->RESUME:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    new-instance v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    const-string v1, "SAVE"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->SAVE:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    new-instance v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    const-string v1, "CANCEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->CANCEL:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->IDLE:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->RECORD:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->PAUSE:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->RESUME:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->SAVE:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->CANCEL:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->$VALUES:[Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;
    .registers 2
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->$VALUES:[Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    invoke-virtual {v0}, [Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    return-object v0
.end method
