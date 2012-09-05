.class public Lcom/infraware/filemanager/template/TemplateListItem;
.super Ljava/lang/Object;
.source "TemplateListItem.java"


# instance fields
.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/template/TemplateListItem;->path:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/template/TemplateListItem;->name:Ljava/lang/String;

    .line 10
    return-void
.end method
