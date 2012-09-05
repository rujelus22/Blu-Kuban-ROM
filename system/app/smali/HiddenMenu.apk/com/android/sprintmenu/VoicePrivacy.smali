.class public Lcom/android/sprintmenu/VoicePrivacy;
.super Landroid/app/Activity;
.source "VoicePrivacy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private checkbox:Landroid/widget/CheckBox;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private voicePrivacy:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/VoicePrivacy;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 68
    new-instance v0, Lcom/android/sprintmenu/VoicePrivacy$2;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/VoicePrivacy$2;-><init>(Lcom/android/sprintmenu/VoicePrivacy;)V

    iput-object v0, p0, Lcom/android/sprintmenu/VoicePrivacy;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sprintmenu/VoicePrivacy;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/sprintmenu/VoicePrivacy;->checkbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/VoicePrivacy;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/sprintmenu/VoicePrivacy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sprintmenu/VoicePrivacy;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/sprintmenu/VoicePrivacy;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/sprintmenu/VoicePrivacy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/android/sprintmenu/VoicePrivacy;->voicePrivacy:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/sprintmenu/VoicePrivacy;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/android/sprintmenu/VoicePrivacy;->voicePrivacy:I

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 63
    const-string v0, "VoicePrivacy"

    const-string v1, "3333"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 34
    const-string v0, "VoicePrivacy"

    const-string v1, "1234567890"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sprintmenu/VoicePrivacy;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 39
    iget-object v0, p0, Lcom/android/sprintmenu/VoicePrivacy;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/sprintmenu/VoicePrivacy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7cf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/VoicePrivacy;->setContentView(I)V

    .line 44
    const/high16 v0, 0x7f07

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/VoicePrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/sprintmenu/VoicePrivacy;->checkbox:Landroid/widget/CheckBox;

    .line 45
    iget-object v0, p0, Lcom/android/sprintmenu/VoicePrivacy;->checkbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/sprintmenu/VoicePrivacy$1;

    invoke-direct {v1, p0}, Lcom/android/sprintmenu/VoicePrivacy$1;-><init>(Lcom/android/sprintmenu/VoicePrivacy;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method
