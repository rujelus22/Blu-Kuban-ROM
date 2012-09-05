.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;
.super Ljava/lang/Object;
.source "EvBaseEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvBaseEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconMenu"
.end annotation


# instance fields
.field m_bEnable:Z

.field m_nMenuId:I

.field m_strName:Ljava/lang/String;

.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;


# direct methods
.method public constructor <init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;ILjava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter "menuId"
    .parameter "name"
    .parameter "bEnable"

    .prologue
    .line 3482
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 3477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3479
    iput p2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;->m_nMenuId:I

    .line 3480
    iput-object p3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;->m_strName:Ljava/lang/String;

    .line 3481
    iput-boolean p4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;->m_bEnable:Z

    return-void
.end method
