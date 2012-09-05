.class public Lcom/vlingo/client/home/HintList;
.super Ljava/util/Vector;
.source "HintList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Lcom/vlingo/client/home/Hint;",
        ">;"
    }
.end annotation


# static fields
.field private static final res:Landroid/content/res/Resources; = null

.field private static final serialVersionUID:J = -0x46e022bc792832fL


# instance fields
.field private final hints_alarm:[Ljava/lang/String;

.field private final hints_contact:[Ljava/lang/String;

.field private final hints_drivingmode:[Ljava/lang/String;

.field private final hints_email:[Ljava/lang/String;

.field private final hints_goto:[Ljava/lang/String;

.field private final hints_goto_china:[Ljava/lang/String;

.field private final hints_map:[Ljava/lang/String;

.field private final hints_memo:[Ljava/lang/String;

.field private final hints_message:[Ljava/lang/String;

.field private final hints_open:[Ljava/lang/String;

.field private final hints_recordvoice:[Ljava/lang/String;

.field private final hints_search:[Ljava/lang/String;

.field private final hints_social:[Ljava/lang/String;

.field private final hints_voicedial:[Ljava/lang/String;

.field private index:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const v7, 0x7f0201cf

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 22
    iput v3, p0, Lcom/vlingo/client/home/HintList;->index:I

    .line 24
    new-array v0, v6, [Ljava/lang/String;

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f09016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f09016f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090170

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_search:[Ljava/lang/String;

    .line 30
    new-array v0, v6, [Ljava/lang/String;

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_voicedial:[Ljava/lang/String;

    .line 36
    new-array v0, v6, [Ljava/lang/String;

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f09016a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_message:[Ljava/lang/String;

    .line 42
    new-array v0, v6, [Ljava/lang/String;

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f09015e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f09015f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_email:[Ljava/lang/String;

    .line 48
    new-array v0, v6, [Ljava/lang/String;

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090171

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_social:[Ljava/lang/String;

    .line 54
    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f09015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f09015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_contact:[Ljava/lang/String;

    .line 59
    new-array v0, v6, [Ljava/lang/String;

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090164

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_map:[Ljava/lang/String;

    .line 65
    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_memo:[Ljava/lang/String;

    .line 70
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_goto:[Ljava/lang/String;

    .line 74
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_goto_china:[Ljava/lang/String;

    .line 78
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f09016b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_open:[Ljava/lang/String;

    .line 82
    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f09016c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f09016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_recordvoice:[Ljava/lang/String;

    .line 87
    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f090158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_alarm:[Ljava/lang/String;

    .line 98
    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f09015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/home/HintList;->res:Landroid/content/res/Resources;

    const v2, 0x7f09015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_drivingmode:[Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_search:[Ljava/lang/String;

    const v1, 0x7f0201d5

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/home/HintList;->addAll([Ljava/lang/String;I)V

    .line 106
    iget-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_voicedial:[Ljava/lang/String;

    const v1, 0x7f0201cb

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/home/HintList;->addAll([Ljava/lang/String;I)V

    .line 107
    iget-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_message:[Ljava/lang/String;

    const v1, 0x7f0201d1

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/home/HintList;->addAll([Ljava/lang/String;I)V

    .line 108
    iget-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_email:[Ljava/lang/String;

    const v1, 0x7f0201ce

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/home/HintList;->addAll([Ljava/lang/String;I)V

    .line 109
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1c9

    .line 110
    iget-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_social:[Ljava/lang/String;

    const v1, 0x7f0201d6

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/home/HintList;->addAll([Ljava/lang/String;I)V

    .line 112
    :cond_1c9
    iget-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_contact:[Ljava/lang/String;

    const v1, 0x7f0201cc

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/home/HintList;->addAll([Ljava/lang/String;I)V

    .line 113
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1e1

    .line 114
    iget-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_map:[Ljava/lang/String;

    const v1, 0x7f0201d2

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/home/HintList;->addAll([Ljava/lang/String;I)V

    .line 116
    :cond_1e1
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isGaudiPhone()Z

    move-result v0

    if-nez v0, :cond_1f5

    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isEpic2Phone()Z

    move-result v0

    if-nez v0, :cond_1f5

    .line 117
    iget-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_memo:[Ljava/lang/String;

    const v1, 0x7f0201d0

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/home/HintList;->addAll([Ljava/lang/String;I)V

    .line 119
    :cond_1f5
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isChineseBuild()Z

    move-result v0

    if-eqz v0, :cond_224

    .line 120
    iget-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_goto_china:[Ljava/lang/String;

    invoke-direct {p0, v0, v7}, Lcom/vlingo/client/home/HintList;->addAll([Ljava/lang/String;I)V

    .line 123
    :goto_200
    iget-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_open:[Ljava/lang/String;

    const v1, 0x7f0201ca

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/home/HintList;->addAll([Ljava/lang/String;I)V

    .line 124
    iget-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_recordvoice:[Ljava/lang/String;

    const v1, 0x7f0201d3

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/home/HintList;->addAll([Ljava/lang/String;I)V

    .line 125
    iget-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_alarm:[Ljava/lang/String;

    const v1, 0x7f0201c9

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/home/HintList;->addAll([Ljava/lang/String;I)V

    .line 127
    iget-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_drivingmode:[Ljava/lang/String;

    const v1, 0x7f0201cd

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/home/HintList;->addAll([Ljava/lang/String;I)V

    .line 149
    invoke-direct {p0}, Lcom/vlingo/client/home/HintList;->randomize()V

    .line 150
    return-void

    .line 122
    :cond_224
    iget-object v0, p0, Lcom/vlingo/client/home/HintList;->hints_goto:[Ljava/lang/String;

    invoke-direct {p0, v0, v7}, Lcom/vlingo/client/home/HintList;->addAll([Ljava/lang/String;I)V

    goto :goto_200
.end method

.method private addAll([Ljava/lang/String;I)V
    .registers 5
    .parameter "hints"
    .parameter "type"

    .prologue
    .line 157
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_14

    .line 158
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/vlingo/client/home/HintList;->addAlready(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 159
    aget-object v1, p1, v0

    invoke-direct {p0, v1, p2}, Lcom/vlingo/client/home/HintList;->addHint(Ljava/lang/String;I)V

    .line 157
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    :cond_14
    return-void
.end method

.method private addAlready(Ljava/lang/String;)Z
    .registers 5
    .parameter "str"

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, hint:Lcom/vlingo/client/home/Hint;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/vlingo/client/home/HintList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 167
    invoke-virtual {p0, v1}, Lcom/vlingo/client/home/HintList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #hint:Lcom/vlingo/client/home/Hint;
    check-cast v0, Lcom/vlingo/client/home/Hint;

    .line 168
    .restart local v0       #hint:Lcom/vlingo/client/home/Hint;
    invoke-virtual {v0}, Lcom/vlingo/client/home/Hint;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 169
    const/4 v2, 0x1

    .line 173
    :goto_19
    return v2

    .line 166
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 173
    :cond_1d
    const/4 v2, 0x0

    goto :goto_19
.end method

.method private addHint(Ljava/lang/String;I)V
    .registers 4
    .parameter "text"
    .parameter "type"

    .prologue
    .line 177
    new-instance v0, Lcom/vlingo/client/home/Hint;

    invoke-direct {v0, p1, p2}, Lcom/vlingo/client/home/Hint;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HintList;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method private randomize()V
    .registers 1

    .prologue
    .line 153
    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 154
    return-void
.end method


# virtual methods
.method public getCurrentHint()Lcom/vlingo/client/home/Hint;
    .registers 2

    .prologue
    .line 195
    iget v0, p0, Lcom/vlingo/client/home/HintList;->index:I

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HintList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/home/Hint;

    return-object v0
.end method

.method public getNextHint()Lcom/vlingo/client/home/Hint;
    .registers 3

    .prologue
    .line 199
    iget v1, p0, Lcom/vlingo/client/home/HintList;->index:I

    add-int/lit8 v0, v1, 0x1

    .line 200
    .local v0, nextIndex:I
    invoke-virtual {p0}, Lcom/vlingo/client/home/HintList;->size()I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 201
    const/4 v0, 0x0

    .line 203
    :cond_b
    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HintList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/home/Hint;

    return-object v1
.end method

.method public getPreviousHint()Lcom/vlingo/client/home/Hint;
    .registers 3

    .prologue
    .line 207
    iget v1, p0, Lcom/vlingo/client/home/HintList;->index:I

    add-int/lit8 v0, v1, -0x1

    .line 208
    .local v0, previousIndex:I
    if-gez v0, :cond_c

    .line 209
    invoke-virtual {p0}, Lcom/vlingo/client/home/HintList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 211
    :cond_c
    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HintList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/home/Hint;

    return-object v1
.end method

.method public moveToNextHint()V
    .registers 3

    .prologue
    .line 181
    iget v0, p0, Lcom/vlingo/client/home/HintList;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vlingo/client/home/HintList;->index:I

    .line 182
    iget v0, p0, Lcom/vlingo/client/home/HintList;->index:I

    invoke-virtual {p0}, Lcom/vlingo/client/home/HintList;->size()I

    move-result v1

    if-lt v0, v1, :cond_11

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/home/HintList;->index:I

    .line 185
    :cond_11
    return-void
.end method

.method public moveToPreviousHint()V
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/vlingo/client/home/HintList;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vlingo/client/home/HintList;->index:I

    .line 189
    iget v0, p0, Lcom/vlingo/client/home/HintList;->index:I

    if-gez v0, :cond_12

    .line 190
    invoke-virtual {p0}, Lcom/vlingo/client/home/HintList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vlingo/client/home/HintList;->index:I

    .line 192
    :cond_12
    return-void
.end method
