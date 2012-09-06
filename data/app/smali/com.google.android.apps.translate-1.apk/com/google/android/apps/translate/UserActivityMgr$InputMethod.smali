.class public final enum Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;
.super Ljava/lang/Enum;
.source "UserActivityMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/UserActivityMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

.field public static final enum CAMERA:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

.field public static final enum HANDWRITING:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

.field public static final enum POSTEDIT:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SPEECH:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

.field public static final enum TRANSLITERATION:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

.field public static final enum UNKNOWN:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

.field public static final enum VIRTUAL_KEYBOARD:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->UNKNOWN:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    .line 44
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    const-string v1, "TRANSLITERATION"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->TRANSLITERATION:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    .line 45
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    const-string v1, "VIRTUAL_KEYBOARD"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->VIRTUAL_KEYBOARD:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    .line 46
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    const-string v1, "SPEECH"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->SPEECH:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    .line 47
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    const-string v1, "POSTEDIT"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->POSTEDIT:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    .line 48
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    const-string v1, "HANDWRITING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->HANDWRITING:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    .line 49
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    const-string v1, "CAMERA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->CAMERA:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    .line 42
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->UNKNOWN:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->TRANSLITERATION:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->VIRTUAL_KEYBOARD:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->SPEECH:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->POSTEDIT:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->HANDWRITING:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->CAMERA:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->$VALUES:[Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;
    .registers 2
    .parameter "name"

    .prologue
    .line 42
    const-class v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->$VALUES:[Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    invoke-virtual {v0}, [Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    return-object v0
.end method
