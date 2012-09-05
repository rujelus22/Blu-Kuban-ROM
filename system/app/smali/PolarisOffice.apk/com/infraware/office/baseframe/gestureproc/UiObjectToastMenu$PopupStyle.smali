.class public Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;
.super Ljava/lang/Object;
.source "UiObjectToastMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopupStyle"
.end annotation


# static fields
.field static final BOTTOM:I = 0x8

.field static final HORIZONTAL_CENTER:I = 0x4

.field static final LEFT:I = 0x1

.field static final RIGHT:I = 0x2

.field static final TOP:I = 0x10


# instance fields
.field private m_nPopupStyle:I

.field final synthetic this$0:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;


# direct methods
.method public constructor <init>(Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->this$0:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->initSytle()V

    return-void
.end method


# virtual methods
.method public getHorizontalStyle()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->m_nPopupStyle:I

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getVerticalStyle()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->m_nPopupStyle:I

    and-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public initSytle()V
    .registers 2

    .prologue
    .line 47
    const/16 v0, 0x14

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->m_nPopupStyle:I

    .line 48
    return-void
.end method

.method public setHorizontal(I)V
    .registers 3
    .parameter "nStyle"

    .prologue
    .line 52
    const/4 v0, 0x4

    if-ge v0, p1, :cond_4

    .line 58
    :goto_3
    return-void

    .line 55
    :cond_4
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->m_nPopupStyle:I

    and-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->m_nPopupStyle:I

    .line 56
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->m_nPopupStyle:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->m_nPopupStyle:I

    goto :goto_3
.end method

.method public setVertical(I)V
    .registers 3
    .parameter "nStyle"

    .prologue
    .line 61
    const/16 v0, 0x8

    if-le v0, p1, :cond_5

    .line 65
    :goto_4
    return-void

    .line 63
    :cond_5
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->m_nPopupStyle:I

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->m_nPopupStyle:I

    .line 64
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->m_nPopupStyle:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->m_nPopupStyle:I

    goto :goto_4
.end method
