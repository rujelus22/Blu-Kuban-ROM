.class public Lcom/google/tts/TTSVersionAlert;
.super Landroid/app/AlertDialog$Builder;
.source "TTSVersionAlert.java"


# static fields
.field private static final INSTALL_TTS:Ljava/lang/String; = "Install the TTS"

.field private static final MARKET_URI:Ljava/lang/String; = "market://search?q=pname:com.google.tts"

.field private static final NO_TTS:Ljava/lang/String; = "This application can talk using the text-to-speech (TTS) library. Please install the TTS."

.field private static final QUIT:Ljava/lang/String; = "Do not install the TTS"


# instance fields
.field private parent:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "context"
    .parameter "noTTSMessage"
    .parameter "installButtonMessage"
    .parameter "quitButtonMessage"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/google/tts/TTSVersionAlert;->parent:Landroid/app/Activity;

    .line 59
    if-eqz p2, :cond_21

    .line 60
    invoke-virtual {p0, p2}, Lcom/google/tts/TTSVersionAlert;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 66
    :goto_c
    new-instance v0, Lcom/google/tts/TTSVersionAlert$1;

    invoke-direct {v0, p0}, Lcom/google/tts/TTSVersionAlert$1;-><init>(Lcom/google/tts/TTSVersionAlert;)V

    .line 74
    .local v0, installListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/google/tts/TTSVersionAlert$2;

    invoke-direct {v1, p0}, Lcom/google/tts/TTSVersionAlert$2;-><init>(Lcom/google/tts/TTSVersionAlert;)V

    .line 80
    .local v1, quitListener:Landroid/content/DialogInterface$OnClickListener;
    if-eqz p3, :cond_27

    .line 81
    invoke-virtual {p0, p3, v0}, Lcom/google/tts/TTSVersionAlert;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    :goto_1b
    if-eqz p4, :cond_2d

    .line 86
    invoke-virtual {p0, p4, v1}, Lcom/google/tts/TTSVersionAlert;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    :goto_20
    return-void

    .line 62
    .end local v0           #installListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v1           #quitListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_21
    const-string v2, "This application can talk using the text-to-speech (TTS) library. Please install the TTS."

    invoke-virtual {p0, v2}, Lcom/google/tts/TTSVersionAlert;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_c

    .line 83
    .restart local v0       #installListener:Landroid/content/DialogInterface$OnClickListener;
    .restart local v1       #quitListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_27
    const-string v2, "Install the TTS"

    invoke-virtual {p0, v2, v0}, Lcom/google/tts/TTSVersionAlert;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1b

    .line 88
    :cond_2d
    const-string v2, "Do not install the TTS"

    invoke-virtual {p0, v2, v1}, Lcom/google/tts/TTSVersionAlert;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_20
.end method

.method static synthetic access$0(Lcom/google/tts/TTSVersionAlert;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/tts/TTSVersionAlert;->parent:Landroid/app/Activity;

    return-object v0
.end method
