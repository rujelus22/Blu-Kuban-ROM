.class public Lcom/locationlabs/v3client/feature/SoundQuencher;
.super Landroid/content/BroadcastReceiver;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/locationlabs/v3client/feature/SoundQuencher$a;
    }
.end annotation


# static fields
.field private static a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    return-void
.end method

.method public static a()V
    .registers 3

    .prologue
    .line 59
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->a()Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    move-result-object v0

    sput-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    .line 61
    :cond_a
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v1

    .line 63
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v0, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b:I

    if-nez v0, :cond_39

    .line 64
    const-string v0, "audio"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 66
    sget-object v2, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, v2, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->a:I

    .line 67
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    const/4 v2, 0x1

    iput v2, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b:I

    .line 68
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v0, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->c:I

    if-nez v0, :cond_33

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/locationlabs/v3client/feature/SoundQuencher;->a(Landroid/content/Context;I)V

    .line 74
    :cond_33
    :goto_33
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    invoke-virtual {v0}, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b()V

    .line 75
    return-void

    .line 71
    :cond_39
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v1, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b:I

    goto :goto_33
.end method

.method private static a(Landroid/content/Context;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 165
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 171
    return-void
.end method

.method public static b()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 78
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    if-nez v0, :cond_b

    invoke-static {}, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->a()Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    move-result-object v0

    sput-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    .line 80
    :cond_b
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v0, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b:I

    if-gtz v0, :cond_16

    .line 81
    const-string v0, "endQuench 0 quenchers"

    invoke-static {v0}, Li;->e(Ljava/lang/String;)V

    .line 84
    :cond_16
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v0, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b:I

    if-gt v0, v2, :cond_32

    .line 85
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b:I

    .line 86
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v1, v1, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->a:I

    invoke-static {v0, v1}, Lcom/locationlabs/v3client/feature/SoundQuencher;->a(Landroid/content/Context;I)V

    .line 92
    :goto_2c
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    invoke-virtual {v0}, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b()V

    .line 93
    return-void

    .line 89
    :cond_32
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v1, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b:I

    goto :goto_2c
.end method

.method public static c()V
    .registers 2

    .prologue
    .line 96
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->a()Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    move-result-object v0

    sput-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    .line 98
    :cond_a
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v1, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->c:I

    .line 99
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v0, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b:I

    if-lez v0, :cond_23

    .line 100
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v1, v1, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->a:I

    invoke-static {v0, v1}, Lcom/locationlabs/v3client/feature/SoundQuencher;->a(Landroid/content/Context;I)V

    .line 103
    :cond_23
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    invoke-virtual {v0}, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b()V

    .line 104
    return-void
.end method

.method public static d()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->a()Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    move-result-object v0

    sput-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    .line 109
    :cond_c
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v0, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->c:I

    if-gtz v0, :cond_17

    .line 110
    const-string v0, "endAllow 0 allowers"

    invoke-static {v0}, Li;->e(Ljava/lang/String;)V

    .line 113
    :cond_17
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v0, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->c:I

    if-gt v0, v3, :cond_3a

    .line 114
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iput v2, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->c:I

    .line 120
    :goto_21
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v0, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->c:I

    if-nez v0, :cond_34

    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v0, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b:I

    if-lez v0, :cond_34

    .line 121
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/locationlabs/v3client/feature/SoundQuencher;->a(Landroid/content/Context;I)V

    .line 124
    :cond_34
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    invoke-virtual {v0}, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b()V

    .line 125
    return-void

    .line 117
    :cond_3a
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v1, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->c:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->c:I

    goto :goto_21
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 131
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    if-nez v0, :cond_b

    invoke-static {}, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->a()Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    move-result-object v0

    sput-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    .line 133
    :cond_b
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 157
    :cond_17
    :goto_17
    return-void

    .line 138
    :cond_18
    const-string v0, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 142
    sget-object v1, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v1, v1, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->c:I

    if-gtz v1, :cond_2a

    sget-object v1, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v1, v1, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b:I

    if-lez v1, :cond_17

    .line 144
    :cond_2a
    sget-object v1, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v1, v1, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b:I

    if-lez v1, :cond_3c

    sget-object v1, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v1, v1, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->c:I

    if-nez v1, :cond_3c

    .line 145
    if-eqz v0, :cond_17

    .line 147
    invoke-static {p1, v2}, Lcom/locationlabs/v3client/feature/SoundQuencher;->a(Landroid/content/Context;I)V

    goto :goto_17

    .line 150
    :cond_3c
    sget-object v1, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v1, v1, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b:I

    if-lez v1, :cond_17

    sget-object v1, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v1, v1, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->c:I

    if-lez v1, :cond_17

    .line 151
    if-nez v0, :cond_17

    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v0, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->a:I

    if-eqz v0, :cond_17

    .line 154
    sget-object v0, Lcom/locationlabs/v3client/feature/SoundQuencher;->a:Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    iget v0, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->a:I

    invoke-static {p1, v0}, Lcom/locationlabs/v3client/feature/SoundQuencher;->a(Landroid/content/Context;I)V

    goto :goto_17
.end method
