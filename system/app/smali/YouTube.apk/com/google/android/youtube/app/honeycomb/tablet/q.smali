.class final Lcom/google/android/youtube/app/honeycomb/tablet/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/m;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/m;)V
    .registers 2
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/q;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 419
    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    .line 420
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/q;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/app/honeycomb/tablet/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/u;->c()V

    .line 422
    :cond_c
    return-void
.end method
