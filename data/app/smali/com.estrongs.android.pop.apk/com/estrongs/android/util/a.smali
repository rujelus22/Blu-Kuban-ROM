.class public Lcom/estrongs/android/util/a;
.super Ljava/lang/Object;


# static fields
.field private static g:[Ljava/lang/String;


# instance fields
.field public a:Z

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:Lcom/estrongs/android/util/e;

.field private f:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AUTO"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "UTF-8"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GBK"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ISO-8859-1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Windows-1252"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EUC-KR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EUC-JP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Shift_JIS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ISO-2022-JP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BIG5"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Windows-1251"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ISO-8859-2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ISO-8859-3"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ISO-8859-4"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ISO-8859-5"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ISO-8859-6"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ISO-8859-7"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ISO-8859-8"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ISO-8859-9"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ISO-8859-10"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ISO-8859-11"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ISO-8859-13"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ISO-8859-14"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ISO-8859-15"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "ISO-8859-16"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ASCII"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "UTF-16LE"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "UTF-16BE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/util/a;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/util/e;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/estrongs/android/util/a;->c:I

    iput v0, p0, Lcom/estrongs/android/util/a;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/util/a;->f:Landroid/app/AlertDialog;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/util/a;->a:Z

    iput-object p1, p0, Lcom/estrongs/android/util/a;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/util/a;->c:I

    iget v0, p0, Lcom/estrongs/android/util/a;->c:I

    iput v0, p0, Lcom/estrongs/android/util/a;->d:I

    iput-object p3, p0, Lcom/estrongs/android/util/a;->e:Lcom/estrongs/android/util/e;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/util/a;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/util/a;->d:I

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    sget-object v2, Lcom/estrongs/android/util/a;->g:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_9

    move v0, v1

    :cond_8
    return v0

    :cond_9
    sget-object v2, Lcom/estrongs/android/util/a;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    if-eqz v1, :cond_11

    aget-object v0, v1, p1

    :cond_11
    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/util/a;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/util/a;->d:I

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/util/a;)Lcom/estrongs/android/util/e;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/util/a;->e:Lcom/estrongs/android/util/e;

    return-object v0
.end method

.method static synthetic b()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/estrongs/android/util/a;->g:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/util/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/util/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/util/a;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/util/a;->c:I

    return v0
.end method


# virtual methods
.method public a()V
    .registers 6

    const v1, 0x7f0a0016

    iget-object v0, p0, Lcom/estrongs/android/util/a;->f:Landroid/app/AlertDialog;

    if-nez v0, :cond_5d

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->a:Z

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/estrongs/android/util/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x1

    :goto_1e
    array-length v3, v2

    if-lt v0, v3, :cond_63

    move-object v0, v1

    :goto_22
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/estrongs/android/util/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090100

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/estrongs/android/util/a;->a:Z

    if-eqz v1, :cond_77

    iget v1, p0, Lcom/estrongs/android/util/a;->d:I

    :goto_36
    new-instance v3, Lcom/estrongs/android/util/b;

    invoke-direct {v3, p0}, Lcom/estrongs/android/util/b;-><init>(Lcom/estrongs/android/util/a;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09005e

    new-instance v2, Lcom/estrongs/android/util/c;

    invoke-direct {v2, p0}, Lcom/estrongs/android/util/c;-><init>(Lcom/estrongs/android/util/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090060

    new-instance v2, Lcom/estrongs/android/util/d;

    invoke-direct {v2, p0}, Lcom/estrongs/android/util/d;-><init>(Lcom/estrongs/android/util/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/util/a;->f:Landroid/app/AlertDialog;

    :cond_5d
    iget-object v0, p0, Lcom/estrongs/android/util/a;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_63
    add-int/lit8 v3, v0, -0x1

    aget-object v4, v2, v0

    aput-object v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_6c
    iget-object v0, p0, Lcom/estrongs/android/util/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_77
    iget v1, p0, Lcom/estrongs/android/util/a;->d:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_36
.end method
