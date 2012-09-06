.class public final enum Lcom/dropbox/android/activity/bZ;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/activity/bZ;

.field public static final enum b:Lcom/dropbox/android/activity/bZ;

.field private static final synthetic c:[Lcom/dropbox/android/activity/bZ;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/dropbox/android/activity/bZ;

    const-string v1, "UPLOADS"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/activity/bZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/bZ;->a:Lcom/dropbox/android/activity/bZ;

    new-instance v0, Lcom/dropbox/android/activity/bZ;

    const-string v1, "CAMERA_UPLOAD_DETAILS"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/activity/bZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/bZ;->b:Lcom/dropbox/android/activity/bZ;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/android/activity/bZ;

    sget-object v1, Lcom/dropbox/android/activity/bZ;->a:Lcom/dropbox/android/activity/bZ;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/android/activity/bZ;->b:Lcom/dropbox/android/activity/bZ;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/android/activity/bZ;->c:[Lcom/dropbox/android/activity/bZ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/activity/bZ;
    .registers 2
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/dropbox/android/activity/bZ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/bZ;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/activity/bZ;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/dropbox/android/activity/bZ;->c:[Lcom/dropbox/android/activity/bZ;

    invoke-virtual {v0}, [Lcom/dropbox/android/activity/bZ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/activity/bZ;

    return-object v0
.end method
