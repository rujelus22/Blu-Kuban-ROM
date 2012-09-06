.class Lcom/google/android/apps/plus/phone/PhotoViewActivity$1;
.super Ljava/lang/Object;
.source "PhotoViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/PhotoViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$1;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 226
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 227
    return-void
.end method
