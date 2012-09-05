.class Lcom/android/musicfx/ActivityMusic$7;
.super Ljava/lang/Object;
.source "ActivityMusic.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/musicfx/ActivityMusic;->reverbSpinnerInit(Landroid/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/musicfx/ActivityMusic;


# direct methods
.method constructor <init>(Lcom/android/musicfx/ActivityMusic;)V
    .registers 2
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/musicfx/ActivityMusic$7;->this$0:Lcom/android/musicfx/ActivityMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic$7;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mPRPresetPrevious:I
    invoke-static {v0}, Lcom/android/musicfx/ActivityMusic;->access$700(Lcom/android/musicfx/ActivityMusic;)I

    move-result v0

    if-eq p3, v0, :cond_d

    .line 492
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic$7;->this$0:Lcom/android/musicfx/ActivityMusic;

    #calls: Lcom/android/musicfx/ActivityMusic;->presetReverbSetPreset(I)V
    invoke-static {v0, p3}, Lcom/android/musicfx/ActivityMusic;->access$800(Lcom/android/musicfx/ActivityMusic;I)V

    .line 494
    :cond_d
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic$7;->this$0:Lcom/android/musicfx/ActivityMusic;

    #setter for: Lcom/android/musicfx/ActivityMusic;->mPRPresetPrevious:I
    invoke-static {v0, p3}, Lcom/android/musicfx/ActivityMusic;->access$702(Lcom/android/musicfx/ActivityMusic;I)I

    .line 495
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
