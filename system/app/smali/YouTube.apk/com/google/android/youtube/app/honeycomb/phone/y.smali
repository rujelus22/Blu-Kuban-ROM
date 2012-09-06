.class final Lcom/google/android/youtube/app/honeycomb/phone/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/t;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;)V
    .registers 2
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/y;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/y;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->s(Lcom/google/android/youtube/app/honeycomb/phone/t;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/y;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->r(Lcom/google/android/youtube/app/honeycomb/phone/t;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/y;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->l(Lcom/google/android/youtube/app/honeycomb/phone/t;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_16
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 314
    return-void

    .line 312
    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method
