.class Lcom/android/musicfx/ActivityMusic$2;
.super Ljava/lang/Object;
.source "ActivityMusic.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/musicfx/ActivityMusic;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/musicfx/ActivityMusic;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/musicfx/ActivityMusic;Landroid/view/ViewGroup;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/musicfx/ActivityMusic$2;->this$0:Lcom/android/musicfx/ActivityMusic;

    iput-object p2, p0, Lcom/android/musicfx/ActivityMusic$2;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic$2;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/musicfx/ActivityMusic;->access$200(Lcom/android/musicfx/ActivityMusic;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/musicfx/ActivityMusic$2;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/musicfx/ActivityMusic;->access$300(Lcom/android/musicfx/ActivityMusic;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic$2;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mAudioSession:I
    invoke-static {v2}, Lcom/android/musicfx/ActivityMusic;->access$400(Lcom/android/musicfx/ActivityMusic;)I

    move-result v2

    sget-object v3, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v0, v1, v2, v3, p2}, Lcom/android/musicfx/ControlPanelEffect;->setParameterBoolean(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;Z)V

    .line 293
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic$2;->this$0:Lcom/android/musicfx/ActivityMusic;

    iget-object v1, p0, Lcom/android/musicfx/ActivityMusic$2;->val$viewGroup:Landroid/view/ViewGroup;

    #calls: Lcom/android/musicfx/ActivityMusic;->setEnabledAllChildren(Landroid/view/ViewGroup;Z)V
    invoke-static {v0, v1, p2}, Lcom/android/musicfx/ActivityMusic;->access$500(Lcom/android/musicfx/ActivityMusic;Landroid/view/ViewGroup;Z)V

    .line 295
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic$2;->this$0:Lcom/android/musicfx/ActivityMusic;

    #calls: Lcom/android/musicfx/ActivityMusic;->updateUIHeadset()V
    invoke-static {v0}, Lcom/android/musicfx/ActivityMusic;->access$100(Lcom/android/musicfx/ActivityMusic;)V

    .line 296
    return-void
.end method
