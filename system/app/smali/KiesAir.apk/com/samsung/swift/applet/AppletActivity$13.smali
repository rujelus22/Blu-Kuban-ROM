.class Lcom/samsung/swift/applet/AppletActivity$13;
.super Ljava/lang/Object;
.source "AppletActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/AppletActivity;->stopAnimation(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/applet/AppletActivity;

.field final synthetic val$img:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/AppletActivity;Landroid/widget/ImageView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1461
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$13;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    iput-object p2, p0, Lcom/samsung/swift/applet/AppletActivity$13;->val$img:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1463
    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$13;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$13;->val$img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    #setter for: Lcom/samsung/swift/applet/AppletActivity;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1, v0}, Lcom/samsung/swift/applet/AppletActivity;->access$3302(Lcom/samsung/swift/applet/AppletActivity;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 1464
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$13;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$3300(Lcom/samsung/swift/applet/AppletActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1465
    return-void
.end method
