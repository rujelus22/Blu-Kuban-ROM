.class final Lcom/google/android/youtube/app/honeycomb/phone/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/v;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bg;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 97
    check-cast p2, Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bg;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)Lcom/google/android/youtube/app/ui/dh;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/app/ui/dh;->f(Lcom/google/android/youtube/core/transfer/Transfer;)V

    const/4 v0, 0x1

    return v0
.end method
