.class public Lcom/vlingo/client/home/Hint;
.super Ljava/lang/Object;
.source "Hint.java"


# static fields
.field public static final TYPE_ALARM:I = 0x7f0201c9

.field public static final TYPE_CHECK_SCHEDULE:I = 0x7f0201d4

.field public static final TYPE_CONTACT:I = 0x7f0201cc

.field public static final TYPE_DRIVING_MODE:I = 0x7f0201cd

.field public static final TYPE_EMAIL:I = 0x7f0201ce

.field public static final TYPE_GOTO:I = 0x7f0201cf

.field public static final TYPE_MAP:I = 0x7f0201d2

.field public static final TYPE_MEMO:I = 0x7f0201d0

.field public static final TYPE_MESSAGE:I = 0x7f0201d1

.field public static final TYPE_OPEN:I = 0x7f0201ca

.field public static final TYPE_RECORD_VOICE:I = 0x7f0201d3

.field public static final TYPE_SEARCH:I = 0x7f0201d5

.field public static final TYPE_SOCIAL:I = 0x7f0201d6

.field public static final TYPE_VOICE_DIAL:I = 0x7f0201cb


# instance fields
.field private title:Ljava/lang/String;

.field public titleHTML:Landroid/text/Spanned;

.field public type:I

.field public type_image:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "title"
    .parameter "type"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/vlingo/client/home/Hint;->title:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/vlingo/client/home/Hint;->type:I

    iput p2, p0, Lcom/vlingo/client/home/Hint;->type_image:I

    .line 37
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vlingo/client/home/Hint;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Landroid/text/Spanned;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vlingo/client/home/Hint;->titleHTML:Landroid/text/Spanned;

    if-nez v0, :cond_c

    .line 45
    iget-object v0, p0, Lcom/vlingo/client/home/Hint;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/home/Hint;->titleHTML:Landroid/text/Spanned;

    .line 46
    :cond_c
    iget-object v0, p0, Lcom/vlingo/client/home/Hint;->titleHTML:Landroid/text/Spanned;

    return-object v0
.end method
