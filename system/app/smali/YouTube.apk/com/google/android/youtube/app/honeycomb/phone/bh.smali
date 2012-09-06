.class final Lcom/google/android/youtube/app/honeycomb/phone/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bh;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 178
    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bh;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/MyUploadsActivity;)V

    .line 181
    :cond_8
    return-void
.end method
