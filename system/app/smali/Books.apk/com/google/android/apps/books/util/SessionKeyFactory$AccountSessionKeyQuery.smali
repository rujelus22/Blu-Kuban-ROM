.class interface abstract Lcom/google/android/apps/books/util/SessionKeyFactory$AccountSessionKeyQuery;
.super Ljava/lang/Object;
.source "SessionKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/SessionKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "AccountSessionKeyQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 672
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "session_key_version"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "session_key_blob"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/util/SessionKeyFactory$AccountSessionKeyQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
