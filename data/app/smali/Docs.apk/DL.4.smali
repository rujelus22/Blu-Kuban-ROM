.class public LDL;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements LEd;
.implements Landroid/text/TextWatcher;


# static fields
.field private static a:C

.field private static a:LDL;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 276
    const/16 v0, 0x2022

    sput-char v0, LDL;->a:C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    return-void
.end method

.method static synthetic a()C
    .registers 1

    .prologue
    .line 34
    sget-char v0, LDL;->a:C

    return v0
.end method

.method public static a()LDL;
    .registers 1

    .prologue
    .line 64
    sget-object v0, LDL;->a:LDL;

    if-eqz v0, :cond_7

    .line 65
    sget-object v0, LDL;->a:LDL;

    .line 68
    :goto_6
    return-object v0

    .line 67
    :cond_7
    new-instance v0, LDL;

    invoke-direct {v0}, LDL;-><init>()V

    sput-object v0, LDL;->a:LDL;

    .line 68
    sget-object v0, LDL;->a:LDL;

    goto :goto_6
.end method

.method private static a(Landroid/text/Spannable;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v2, LDO;

    invoke-interface {p0, v1, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDO;

    .line 138
    :goto_d
    array-length v2, v0

    if-ge v1, v2, :cond_18

    .line 139
    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 141
    :cond_18
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 39
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_2d

    move-object v0, p1

    .line 40
    check-cast v0, Landroid/text/Spannable;

    .line 48
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, LDN;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LDN;

    move v2, v3

    .line 50
    :goto_15
    array-length v4, v1

    if-ge v2, v4, :cond_20

    .line 51
    aget-object v4, v1, v2

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 54
    :cond_20
    invoke-static {v0}, LDL;->a(Landroid/text/Spannable;)V

    .line 56
    new-instance v1, LDN;

    invoke-direct {v1, p2}, LDN;-><init>(Landroid/view/View;)V

    const/16 v2, 0x22

    invoke-interface {v0, v1, v3, v3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 60
    :cond_2d
    new-instance v0, LDM;

    invoke-direct {v0, p1}, LDM;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    if-nez p3, :cond_b

    .line 128
    instance-of v0, p2, Landroid/text/Spannable;

    if-eqz v0, :cond_b

    .line 129
    check-cast p2, Landroid/text/Spannable;

    .line 131
    invoke-static {p2}, LDL;->a(Landroid/text/Spannable;)V

    .line 134
    :cond_b
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 80
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_17

    move-object v0, p1

    .line 81
    check-cast v0, Landroid/text/Spannable;

    .line 82
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v3, LDN;

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LDN;

    .line 84
    array-length v3, v1

    if-nez v3, :cond_18

    .line 116
    :cond_17
    :goto_17
    return-void

    .line 95
    :cond_18
    const/4 v3, 0x0

    move v5, v2

    move-object v2, v3

    move v3, v5

    .line 96
    :goto_1c
    if-nez v2, :cond_2c

    array-length v4, v1

    if-ge v3, v4, :cond_2c

    .line 97
    aget-object v2, v1, v3

    invoke-virtual {v2}, LDN;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 100
    :cond_2c
    if-eqz v2, :cond_17

    .line 104
    invoke-static {}, LDW;->a()LDW;

    move-result-object v1

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, LDW;->a(Landroid/content/Context;)I

    move-result v1

    .line 105
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_17

    .line 106
    if-lez p4, :cond_17

    .line 107
    invoke-static {v0}, LDL;->a(Landroid/text/Spannable;)V

    .line 109
    const/4 v1, 0x1

    if-ne p4, v1, :cond_17

    .line 110
    new-instance v1, LDO;

    invoke-direct {v1, v0, p0}, LDO;-><init>(Landroid/text/Spannable;LDL;)V

    add-int v2, p2, p4

    const/16 v3, 0x21

    invoke-interface {v0, v1, p2, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_17
.end method
