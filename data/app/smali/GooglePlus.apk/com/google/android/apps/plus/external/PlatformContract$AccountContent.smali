.class public Lcom/google/android/apps/plus/external/PlatformContract$AccountContent;
.super Lcom/google/android/apps/plus/external/PlatformContract$ContentBase;
.source "PlatformContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/external/PlatformContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountContent"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/external/PlatformContract$AccountContent;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
