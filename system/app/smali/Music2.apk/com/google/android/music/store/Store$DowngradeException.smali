.class Lcom/google/android/music/store/Store$DowngradeException;
.super Ljava/lang/RuntimeException;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DowngradeException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final mFilepath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "filepath"

    .prologue
    .line 2214
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2215
    iput-object p1, p0, Lcom/google/android/music/store/Store$DowngradeException;->mFilepath:Ljava/lang/String;

    .line 2216
    return-void
.end method


# virtual methods
.method getFilepath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/google/android/music/store/Store$DowngradeException;->mFilepath:Ljava/lang/String;

    return-object v0
.end method
