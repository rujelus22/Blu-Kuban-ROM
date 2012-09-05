.class public final Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
.super Ljava/lang/Object;
.source "EntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/picasa/EntrySchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColumnInfo"
.end annotation


# instance fields
.field public final extraSql:Ljava/lang/String;

.field public final field:Ljava/lang/reflect/Field;

.field public final fullText:Z

.field public final indexed:Z

.field public final name:Ljava/lang/String;

.field public final projectionIndex:I

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZLjava/lang/reflect/Field;I)V
    .registers 8
    .parameter "name"
    .parameter "type"
    .parameter "indexed"
    .parameter "fullText"
    .parameter "field"
    .parameter "projectionIndex"

    .prologue
    .line 464
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 457
    const-string v0, ""

    iput-object v0, p0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->extraSql:Ljava/lang/String;

    .line 465
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 466
    iput p2, p0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->type:I

    .line 467
    iput-boolean p3, p0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->indexed:Z

    .line 468
    iput-boolean p4, p0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->fullText:Z

    .line 469
    iput-object p5, p0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 470
    iput p6, p0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 471
    return-void
.end method


# virtual methods
.method public isId()Z
    .registers 3

    .prologue
    .line 474
    const-string v0, "_id"

    iget-object v1, p0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
