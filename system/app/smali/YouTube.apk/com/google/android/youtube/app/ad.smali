.class final Lcom/google/android/youtube/app/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/av;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/aa;

.field private final b:Landroid/app/Activity;

.field private final c:Lcom/google/android/youtube/core/async/av;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/aa;Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/youtube/app/ad;->a:Lcom/google/android/youtube/app/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, Lcom/google/android/youtube/app/ad;->b:Landroid/app/Activity;

    .line 128
    iput-object p3, p0, Lcom/google/android/youtube/app/ad;->c:Lcom/google/android/youtube/core/async/av;

    .line 129
    iput p4, p0, Lcom/google/android/youtube/app/ad;->d:I

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ad;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/ad;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ad;)I
    .registers 2
    .parameter

    .prologue
    .line 121
    iget v0, p0, Lcom/google/android/youtube/app/ad;->d:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter

    .prologue
    .line 133
    iget-object v0, p1, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/app/ad;->a:Lcom/google/android/youtube/app/aa;

    invoke-static {v0, p0, p1}, Lcom/google/android/youtube/app/aa;->a(Lcom/google/android/youtube/app/aa;Lcom/google/android/youtube/app/ad;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 138
    :goto_d
    return-void

    .line 136
    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/app/ad;->c:Lcom/google/android/youtube/core/async/av;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/av;->a(Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_d
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/app/ad;->c:Lcom/google/android/youtube/core/async/av;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/av;->a(Ljava/lang/Exception;)V

    .line 148
    return-void
.end method

.method public final d_()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/app/ad;->c:Lcom/google/android/youtube/core/async/av;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/av;->d_()V

    .line 143
    return-void
.end method
