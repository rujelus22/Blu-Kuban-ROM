.class public Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
.super Ljava/lang/Object;
.source "AbstractEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Kind"
.end annotation


# static fields
.field public static final DOCUMENT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final DRAWING:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final FILE:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final FOLDER:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final PDF:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final PRESENTATION:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

.field public static final SPREADSHEET:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;


# instance fields
.field private kind:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "document"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 27
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "pdf"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PDF:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 32
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "spreadsheet"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->SPREADSHEET:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 37
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "presentation"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 42
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "drawing"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DRAWING:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 47
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "file"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->FILE:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 52
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    const-string v1, "folder"

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->FOLDER:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 14
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "kind"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->kind:Ljava/lang/String;

    return-void
.end method

.method public static findKindFromFilename(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
    .registers 5
    .parameter "filename"

    .prologue
    .line 60
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->FILE:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 61
    .local v1, kind:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 61
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, extension:Ljava/lang/String;
    const-string v2, "doc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 64
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    .line 74
    :cond_1c
    :goto_1c
    return-object v1

    .line 65
    :cond_1d
    const-string v2, "ppt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 66
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_1c

    .line 67
    :cond_28
    const-string v2, "xls"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 68
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->SPREADSHEET:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_1c

    .line 69
    :cond_33
    const-string v2, "pdf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 70
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PDF:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_1c

    .line 71
    :cond_3e
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    const-string v2, "jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 72
    :cond_4e
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DRAWING:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    goto :goto_1c
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->kind:Ljava/lang/String;

    return-object v0
.end method
