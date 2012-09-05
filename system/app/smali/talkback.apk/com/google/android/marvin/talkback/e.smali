.class public final enum Lcom/google/android/marvin/talkback/e;
.super Ljava/lang/Enum;


# static fields
.field private static enum a:Lcom/google/android/marvin/talkback/e;

.field private static enum b:Lcom/google/android/marvin/talkback/e;

.field private static enum c:Lcom/google/android/marvin/talkback/e;

.field private static enum d:Lcom/google/android/marvin/talkback/e;

.field private static enum e:Lcom/google/android/marvin/talkback/e;

.field private static enum f:Lcom/google/android/marvin/talkback/e;

.field private static enum g:Lcom/google/android/marvin/talkback/e;

.field private static enum h:Lcom/google/android/marvin/talkback/e;

.field private static enum i:Lcom/google/android/marvin/talkback/e;

.field private static enum j:Lcom/google/android/marvin/talkback/e;

.field private static enum k:Lcom/google/android/marvin/talkback/e;

.field private static enum l:Lcom/google/android/marvin/talkback/e;

.field private static enum m:Lcom/google/android/marvin/talkback/e;

.field private static enum n:Lcom/google/android/marvin/talkback/e;

.field private static enum o:Lcom/google/android/marvin/talkback/e;

.field private static p:I

.field private static q:I

.field private static r:I

.field private static s:I

.field private static t:I

.field private static u:Z

.field private static final synthetic w:[Lcom/google/android/marvin/talkback/e;


# instance fields
.field private final v:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/marvin/talkback/e;

    const-string v1, "TEXT_MESSAGE"

    const v2, 0x7f070022

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/marvin/talkback/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/e;->a:Lcom/google/android/marvin/talkback/e;

    new-instance v0, Lcom/google/android/marvin/talkback/e;

    const-string v1, "TEXT_MESSAGE_FAILED"

    const v2, 0x7f070023

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/marvin/talkback/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/e;->b:Lcom/google/android/marvin/talkback/e;

    new-instance v0, Lcom/google/android/marvin/talkback/e;

    const-string v1, "MISSED_CALL"

    const v2, 0x7f070024

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/marvin/talkback/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/e;->c:Lcom/google/android/marvin/talkback/e;

    new-instance v0, Lcom/google/android/marvin/talkback/e;

    const-string v1, "USB_CONNECTED"

    const v2, 0x7f070025

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/marvin/talkback/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/e;->d:Lcom/google/android/marvin/talkback/e;

    new-instance v0, Lcom/google/android/marvin/talkback/e;

    const-string v1, "MUTE"

    const v2, 0x7f070026

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/marvin/talkback/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/e;->e:Lcom/google/android/marvin/talkback/e;

    new-instance v0, Lcom/google/android/marvin/talkback/e;

    const-string v1, "CHAT"

    const/4 v2, 0x5

    const v3, 0x7f070027

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/e;->f:Lcom/google/android/marvin/talkback/e;

    new-instance v0, Lcom/google/android/marvin/talkback/e;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    const v3, 0x7f070028

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/e;->g:Lcom/google/android/marvin/talkback/e;

    new-instance v0, Lcom/google/android/marvin/talkback/e;

    const-string v1, "MORE"

    const/4 v2, 0x7

    const v3, 0x7f070029

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/e;->h:Lcom/google/android/marvin/talkback/e;

    new-instance v0, Lcom/google/android/marvin/talkback/e;

    const-string v1, "SDCARD"

    const/16 v2, 0x8

    const v3, 0x7f07002a

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/e;->i:Lcom/google/android/marvin/talkback/e;

    new-instance v0, Lcom/google/android/marvin/talkback/e;

    const-string v1, "SDCARD_USB"

    const/16 v2, 0x9

    const v3, 0x7f07002b

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/e;->j:Lcom/google/android/marvin/talkback/e;

    new-instance v0, Lcom/google/android/marvin/talkback/e;

    const-string v1, "SYNC"

    const/16 v2, 0xa

    const v3, 0x7f07002c

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/e;->k:Lcom/google/android/marvin/talkback/e;

    new-instance v0, Lcom/google/android/marvin/talkback/e;

    const-string v1, "SYNC_NOANIM"

    const/16 v2, 0xb

    const v3, 0x7f07002e

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/e;->l:Lcom/google/android/marvin/talkback/e;

    new-instance v0, Lcom/google/android/marvin/talkback/e;

    const-string v1, "VOICEMAIL"

    const/16 v2, 0xc

    const v3, 0x7f07002f

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/e;->m:Lcom/google/android/marvin/talkback/e;

    new-instance v0, Lcom/google/android/marvin/talkback/e;

    const-string v1, "PLAY"

    const/16 v2, 0xd

    const v3, 0x7f070030

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/e;->n:Lcom/google/android/marvin/talkback/e;

    new-instance v0, Lcom/google/android/marvin/talkback/e;

    const-string v1, "EMAIL"

    const/16 v2, 0xe

    const v3, 0x7f07002d

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/e;->o:Lcom/google/android/marvin/talkback/e;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/google/android/marvin/talkback/e;

    sget-object v1, Lcom/google/android/marvin/talkback/e;->a:Lcom/google/android/marvin/talkback/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/marvin/talkback/e;->b:Lcom/google/android/marvin/talkback/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/marvin/talkback/e;->c:Lcom/google/android/marvin/talkback/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/marvin/talkback/e;->d:Lcom/google/android/marvin/talkback/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/marvin/talkback/e;->e:Lcom/google/android/marvin/talkback/e;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/marvin/talkback/e;->f:Lcom/google/android/marvin/talkback/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/marvin/talkback/e;->g:Lcom/google/android/marvin/talkback/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/marvin/talkback/e;->h:Lcom/google/android/marvin/talkback/e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/marvin/talkback/e;->i:Lcom/google/android/marvin/talkback/e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/marvin/talkback/e;->j:Lcom/google/android/marvin/talkback/e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/marvin/talkback/e;->k:Lcom/google/android/marvin/talkback/e;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/marvin/talkback/e;->l:Lcom/google/android/marvin/talkback/e;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/marvin/talkback/e;->m:Lcom/google/android/marvin/talkback/e;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/marvin/talkback/e;->n:Lcom/google/android/marvin/talkback/e;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/marvin/talkback/e;->o:Lcom/google/android/marvin/talkback/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/marvin/talkback/e;->w:[Lcom/google/android/marvin/talkback/e;

    sput-boolean v4, Lcom/google/android/marvin/talkback/e;->u:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/marvin/talkback/e;->v:I

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, -0x1

    invoke-static {}, Lcom/google/android/marvin/utils/i;->a()Lcom/google/android/marvin/utils/i;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Lcom/google/android/marvin/utils/i;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1a

    const-class v1, Lcom/google/android/marvin/talkback/e;

    const-string v2, "Can\'t find class drawable in package: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v6, v2, v3}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_19
    return v0

    :cond_1a
    :try_start_1a
    invoke-virtual {v1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_24

    move-result v0

    goto :goto_19

    :catch_24
    move-exception v1

    const-class v1, Lcom/google/android/marvin/talkback/e;

    const-string v2, "Failed to load drawable %s from package %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    aput-object p1, v3, v5

    invoke-static {v1, v6, v2, v3}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19
.end method

.method public static a(Landroid/content/Context;I)Lcom/google/android/marvin/talkback/e;
    .registers 8

    const/4 v3, 0x1

    sget-boolean v0, Lcom/google/android/marvin/talkback/e;->u:Z

    if-nez v0, :cond_43

    const-string v0, "com.android.mms"

    const-string v1, "com.android.mms.R$drawable"

    const-string v2, "stat_notify_sms"

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/marvin/talkback/e;->p:I

    const-string v0, "com.android.mms"

    const-string v1, "com.android.mms.R$drawable"

    const-string v2, "stat_notify_sms_failed"

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/marvin/talkback/e;->q:I

    const-string v0, "com.google.android.music"

    const-string v1, "com.android.music.R$drawable"

    const-string v2, "stat_notify_musicplayer"

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/marvin/talkback/e;->r:I

    const-string v0, "com.google.android.gm"

    const-string v1, "com.google.android.gm.R$drawable"

    const-string v2, "stat_notify_email"

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/marvin/talkback/e;->s:I

    const-string v0, "com.google.android.email"

    const-string v1, "com.android.email.R$drawable"

    const-string v2, "stat_notify_email_generic"

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/marvin/talkback/e;->t:I

    sput-boolean v3, Lcom/google/android/marvin/talkback/e;->u:Z

    :cond_43
    sget v0, Lcom/google/android/marvin/talkback/e;->p:I

    if-ne p1, v0, :cond_4a

    sget-object v0, Lcom/google/android/marvin/talkback/e;->a:Lcom/google/android/marvin/talkback/e;

    :goto_49
    return-object v0

    :cond_4a
    sget v0, Lcom/google/android/marvin/talkback/e;->q:I

    if-ne p1, v0, :cond_51

    sget-object v0, Lcom/google/android/marvin/talkback/e;->b:Lcom/google/android/marvin/talkback/e;

    goto :goto_49

    :cond_51
    const v0, 0x108007f

    if-ne p1, v0, :cond_59

    sget-object v0, Lcom/google/android/marvin/talkback/e;->c:Lcom/google/android/marvin/talkback/e;

    goto :goto_49

    :cond_59
    const v0, 0x1080076

    if-ne p1, v0, :cond_61

    sget-object v0, Lcom/google/android/marvin/talkback/e;->e:Lcom/google/android/marvin/talkback/e;

    goto :goto_49

    :cond_61
    const v0, 0x1080077

    if-ne p1, v0, :cond_69

    sget-object v0, Lcom/google/android/marvin/talkback/e;->f:Lcom/google/android/marvin/talkback/e;

    goto :goto_49

    :cond_69
    const v0, 0x1080078

    if-ne p1, v0, :cond_71

    sget-object v0, Lcom/google/android/marvin/talkback/e;->g:Lcom/google/android/marvin/talkback/e;

    goto :goto_49

    :cond_71
    const v0, 0x1080079

    if-ne p1, v0, :cond_79

    sget-object v0, Lcom/google/android/marvin/talkback/e;->h:Lcom/google/android/marvin/talkback/e;

    goto :goto_49

    :cond_79
    const v0, 0x108007a

    if-ne p1, v0, :cond_81

    sget-object v0, Lcom/google/android/marvin/talkback/e;->i:Lcom/google/android/marvin/talkback/e;

    goto :goto_49

    :cond_81
    const v0, 0x108007b

    if-ne p1, v0, :cond_89

    sget-object v0, Lcom/google/android/marvin/talkback/e;->j:Lcom/google/android/marvin/talkback/e;

    goto :goto_49

    :cond_89
    const v0, 0x108007c

    if-ne p1, v0, :cond_91

    sget-object v0, Lcom/google/android/marvin/talkback/e;->k:Lcom/google/android/marvin/talkback/e;

    goto :goto_49

    :cond_91
    const v0, 0x108007d

    if-ne p1, v0, :cond_99

    sget-object v0, Lcom/google/android/marvin/talkback/e;->l:Lcom/google/android/marvin/talkback/e;

    goto :goto_49

    :cond_99
    const v0, 0x108007e

    if-ne p1, v0, :cond_a1

    sget-object v0, Lcom/google/android/marvin/talkback/e;->m:Lcom/google/android/marvin/talkback/e;

    goto :goto_49

    :cond_a1
    sget v0, Lcom/google/android/marvin/talkback/e;->t:I

    if-ne p1, v0, :cond_a8

    sget-object v0, Lcom/google/android/marvin/talkback/e;->o:Lcom/google/android/marvin/talkback/e;

    goto :goto_49

    :cond_a8
    sget v0, Lcom/google/android/marvin/talkback/e;->s:I

    if-ne p1, v0, :cond_af

    sget-object v0, Lcom/google/android/marvin/talkback/e;->o:Lcom/google/android/marvin/talkback/e;

    goto :goto_49

    :cond_af
    sget v0, Lcom/google/android/marvin/talkback/e;->r:I

    if-ne p1, v0, :cond_b6

    sget-object v0, Lcom/google/android/marvin/talkback/e;->n:Lcom/google/android/marvin/talkback/e;

    goto :goto_49

    :cond_b6
    const-class v0, Lcom/google/android/marvin/talkback/e;

    const/4 v1, 0x5

    const-string v2, "Unknown notification %d"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_49
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/marvin/talkback/e;
    .registers 2

    const-class v0, Lcom/google/android/marvin/talkback/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/e;

    return-object v0
.end method

.method public static values()[Lcom/google/android/marvin/talkback/e;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/marvin/talkback/e;->w:[Lcom/google/android/marvin/talkback/e;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/marvin/talkback/e;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/marvin/talkback/e;->v:I

    return v0
.end method
