.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$19;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILjava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$19;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    .line 2450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$19;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowTemp:Z
    invoke-static {v0, p2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$38(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Z)V

    .line 2454
    return-void
.end method
