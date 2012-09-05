.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$20;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$20;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    .line 2457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2460
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$20;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v3, -0x1

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2461
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$20;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowDialog:[Z
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$37(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)[Z

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$20;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentDontShow:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$47(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$20;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowTemp:Z
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$48(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Z

    move-result v4

    aput-boolean v4, v2, v3

    .line 2462
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$20;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const-string v3, "PhotoEditorSharedPreferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2463
    .local v1, sharedpref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2464
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$20;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowList:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$49(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$20;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentDontShow:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$47(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$20;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowDialog:[Z
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$37(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)[Z

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$20;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentDontShow:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$47(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)I

    move-result v4

    aget-boolean v3, v3, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2465
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2467
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$20;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$20;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentDontShow:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$47(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->RunAfterIntro(I)V

    .line 2468
    return-void
.end method
