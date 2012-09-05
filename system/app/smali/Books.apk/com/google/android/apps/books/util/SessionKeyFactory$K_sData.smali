.class public Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
.super Ljava/lang/Object;
.source "SessionKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/SessionKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "K_sData"
.end annotation


# instance fields
.field public final K_sVersion:Ljava/lang/String;

.field public final encyptedK_sClause:[B

.field public final sessionKeyUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;[B)V
    .registers 4
    .parameter "version"
    .parameter "uri"
    .parameter "encyptedKey"

    .prologue
    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    iput-object p1, p0, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    .line 694
    iput-object p2, p0, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    .line 695
    iput-object p3, p0, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->encyptedK_sClause:[B

    .line 696
    return-void
.end method
