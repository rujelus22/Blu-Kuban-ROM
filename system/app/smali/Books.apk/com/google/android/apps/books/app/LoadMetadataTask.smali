.class public abstract Lcom/google/android/apps/books/app/LoadMetadataTask;
.super Landroid/os/AsyncTask;
.source "LoadMetadataTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/LoadMetadataTask$Index;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "viewability"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "open_access"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "buy_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "content_version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/app/LoadMetadataTask;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
