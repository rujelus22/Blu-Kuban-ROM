.class LDY;
.super Ljava/lang/Object;
.source "TextKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# static fields
.field private static a:LDY;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LDY;
    .registers 1

    .prologue
    .line 251
    sget-object v0, LDY;->a:LDY;

    if-eqz v0, :cond_7

    .line 252
    sget-object v0, LDY;->a:LDY;

    .line 255
    :goto_6
    return-object v0

    .line 254
    :cond_7
    new-instance v0, LDY;

    invoke-direct {v0}, LDY;-><init>()V

    sput-object v0, LDY;->a:LDY;

    .line 255
    sget-object v0, LDY;->a:LDY;

    goto :goto_6
.end method


# virtual methods
.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    return-void
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method
