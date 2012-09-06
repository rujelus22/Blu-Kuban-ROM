.class final Lcom/google/android/youtube/app/adapter/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/x;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/adapter/x;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/y;->a:Lcom/google/android/youtube/app/adapter/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 182
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/y;->a:Lcom/google/android/youtube/app/adapter/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/adapter/x;->a(Lcom/google/android/youtube/app/adapter/x;Z)V

    .line 185
    :cond_9
    return-void
.end method
