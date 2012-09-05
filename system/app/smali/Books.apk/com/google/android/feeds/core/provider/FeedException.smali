.class public Lcom/google/android/feeds/core/provider/FeedException;
.super Ljava/io/IOException;
.source "FeedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/feeds/core/provider/FeedException;->mExtras:Landroid/os/Bundle;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "detailMessage"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/feeds/core/provider/FeedException;->mExtras:Landroid/os/Bundle;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "detailMessage"
    .parameter "cause"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/feeds/core/provider/FeedException;->mExtras:Landroid/os/Bundle;

    .line 50
    invoke-virtual {p0, p2}, Lcom/google/android/feeds/core/provider/FeedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "cause"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/feeds/core/provider/FeedException;->mExtras:Landroid/os/Bundle;

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/android/feeds/core/provider/FeedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 56
    return-void
.end method


# virtual methods
.method public copyExtrasTo(Landroid/os/Bundle;)V
    .registers 3
    .parameter "destination"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/feeds/core/provider/FeedException;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method
