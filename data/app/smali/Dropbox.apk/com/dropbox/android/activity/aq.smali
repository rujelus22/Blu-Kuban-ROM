.class public final enum Lcom/dropbox/android/activity/aq;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/activity/aq;

.field public static final enum b:Lcom/dropbox/android/activity/aq;

.field private static final synthetic c:[Lcom/dropbox/android/activity/aq;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/dropbox/android/activity/aq;

    const-string v1, "IMPORT_FILES"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/activity/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/aq;->a:Lcom/dropbox/android/activity/aq;

    .line 45
    new-instance v0, Lcom/dropbox/android/activity/aq;

    const-string v1, "EXPORT_TO_FOLDER"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/activity/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/aq;->b:Lcom/dropbox/android/activity/aq;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/android/activity/aq;

    sget-object v1, Lcom/dropbox/android/activity/aq;->a:Lcom/dropbox/android/activity/aq;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/android/activity/aq;->b:Lcom/dropbox/android/activity/aq;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/android/activity/aq;->c:[Lcom/dropbox/android/activity/aq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/activity/aq;
    .registers 2
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/dropbox/android/activity/aq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/aq;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/activity/aq;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/dropbox/android/activity/aq;->c:[Lcom/dropbox/android/activity/aq;

    invoke-virtual {v0}, [Lcom/dropbox/android/activity/aq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/activity/aq;

    return-object v0
.end method
