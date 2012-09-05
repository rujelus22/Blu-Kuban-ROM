.class final Lcom/cooliris/picasa/TableContentProvider$Mapping;
.super Ljava/lang/Object;
.source "TableContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/picasa/TableContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Mapping"
.end annotation


# instance fields
.field public hasId:Z

.field public mimeSubtype:Ljava/lang/String;

.field public table:Lcom/cooliris/picasa/EntrySchema;


# direct methods
.method public constructor <init>(Lcom/cooliris/picasa/EntrySchema;Ljava/lang/String;Z)V
    .registers 4
    .parameter "table"
    .parameter "mimeSubtype"
    .parameter "hasId"

    .prologue
    .line 240
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/cooliris/picasa/TableContentProvider$Mapping;->table:Lcom/cooliris/picasa/EntrySchema;

    .line 242
    iput-object p2, p0, Lcom/cooliris/picasa/TableContentProvider$Mapping;->mimeSubtype:Ljava/lang/String;

    .line 243
    iput-boolean p3, p0, Lcom/cooliris/picasa/TableContentProvider$Mapping;->hasId:Z

    .line 244
    return-void
.end method
