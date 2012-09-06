.class final Lcom/google/android/youtube/app/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/g;

.field private final b:Landroid/app/Activity;

.field private final c:Lcom/google/android/youtube/core/async/bc;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/g;Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/youtube/app/j;->a:Lcom/google/android/youtube/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, Lcom/google/android/youtube/app/j;->b:Landroid/app/Activity;

    .line 128
    iput-object p3, p0, Lcom/google/android/youtube/app/j;->c:Lcom/google/android/youtube/core/async/bc;

    .line 129
    iput p4, p0, Lcom/google/android/youtube/app/j;->d:I

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/j;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/j;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/j;)I
    .registers 2
    .parameter

    .prologue
    .line 121
    iget v0, p0, Lcom/google/android/youtube/app/j;->d:I

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
    iget-object v0, p0, Lcom/google/android/youtube/app/j;->a:Lcom/google/android/youtube/app/g;

    invoke-static {v0, p0, p1}, Lcom/google/android/youtube/app/g;->a(Lcom/google/android/youtube/app/g;Lcom/google/android/youtube/app/j;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 138
    :goto_d
    return-void

    .line 136
    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/app/j;->c:Lcom/google/android/youtube/core/async/bc;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/bc;->a(Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_d
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/app/j;->c:Lcom/google/android/youtube/core/async/bc;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/bc;->a(Ljava/lang/Exception;)V

    .line 148
    return-void
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/app/j;->c:Lcom/google/android/youtube/core/async/bc;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/bc;->e_()V

    .line 143
    return-void
.end method
