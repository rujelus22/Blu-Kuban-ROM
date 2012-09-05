.class final Lcom/google/android/youtube/app/honeycomb/tablet/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/n;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/n;)V
    .registers 2
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/r;->a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 438
    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    .line 439
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/r;->a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->a(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Lcom/google/android/youtube/app/honeycomb/tablet/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/v;->c()V

    .line 441
    :cond_c
    return-void
.end method
