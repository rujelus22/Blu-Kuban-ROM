.class public abstract Lcom/google/android/youtube/app/honeycomb/phone/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/aw;


# instance fields
.field protected final a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    .line 28
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/e;->d()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->s()V

    .line 82
    :goto_f
    return-void

    .line 80
    :cond_10
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->b(Ljava/lang/String;)V

    goto :goto_f
.end method


# virtual methods
.method public final a(I)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->c:I

    .line 39
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->b:Z

    .line 47
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/e;->a()V

    .line 55
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->c:I

    return v0
.end method

.method public final f()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->b:Z

    return v0
.end method

.method public g()V
    .registers 1

    .prologue
    .line 57
    return-void
.end method

.method public h()V
    .registers 1

    .prologue
    .line 59
    return-void
.end method

.method public i()V
    .registers 1

    .prologue
    .line 61
    return-void
.end method

.method public j()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/e;->a()V

    .line 73
    return-void
.end method

.method public k()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/e;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->s()V

    .line 86
    return-void
.end method
