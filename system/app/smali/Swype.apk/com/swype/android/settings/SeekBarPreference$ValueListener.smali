.class Lcom/swype/android/settings/SeekBarPreference$ValueListener;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/settings/SeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/settings/SeekBarPreference;


# direct methods
.method private constructor <init>(Lcom/swype/android/settings/SeekBarPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/swype/android/settings/SeekBarPreference$ValueListener;->this$0:Lcom/swype/android/settings/SeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/swype/android/settings/SeekBarPreference;Lcom/swype/android/settings/SeekBarPreference$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/swype/android/settings/SeekBarPreference$ValueListener;-><init>(Lcom/swype/android/settings/SeekBarPreference;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/swype/android/settings/SeekBarPreference$ValueListener;->this$0:Lcom/swype/android/settings/SeekBarPreference;

    #getter for: Lcom/swype/android/settings/SeekBarPreference;->label:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/swype/android/settings/SeekBarPreference;->access$300(Lcom/swype/android/settings/SeekBarPreference;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/swype/android/settings/SeekBarPreference$ValueListener;->this$0:Lcom/swype/android/settings/SeekBarPreference;

    #calls: Lcom/swype/android/settings/SeekBarPreference;->valueUI2Pref(I)I
    invoke-static {v2, p2}, Lcom/swype/android/settings/SeekBarPreference;->access$100(Lcom/swype/android/settings/SeekBarPreference;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/swype/android/settings/SeekBarPreference$ValueListener;->this$0:Lcom/swype/android/settings/SeekBarPreference;

    #getter for: Lcom/swype/android/settings/SeekBarPreference;->valueSubLabel:Ljava/lang/String;
    invoke-static {v2}, Lcom/swype/android/settings/SeekBarPreference;->access$200(Lcom/swype/android/settings/SeekBarPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 252
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 259
    return-void
.end method
