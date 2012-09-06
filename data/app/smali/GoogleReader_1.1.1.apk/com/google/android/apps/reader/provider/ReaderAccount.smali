.class interface abstract Lcom/google/android/apps/reader/provider/ReaderAccount;
.super Ljava/lang/Object;
.source "ReaderAccount.java"


# static fields
.field public static final ACCOUNT_FEATURES:[Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field public static final SERVICE_CONTACTS:Ljava/lang/String; = "cp"

.field public static final SERVICE_READER:Ljava/lang/String; = "reader"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "google"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderAccount;->ACCOUNT_FEATURES:[Ljava/lang/String;

    return-void
.end method
