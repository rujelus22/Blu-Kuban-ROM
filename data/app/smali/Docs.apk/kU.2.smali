.class public final enum LkU;
.super Ljava/lang/Enum;
.source "Entry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LkU;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LkU;

.field private static final synthetic a:[LkU;

.field public static final enum b:LkU;

.field public static final enum c:LkU;

.field public static final enum d:LkU;

.field public static final enum e:LkU;

.field public static final enum f:LkU;

.field public static final enum g:LkU;

.field public static final enum h:LkU;

.field public static final enum i:LkU;

.field public static final enum j:LkU;

.field public static final enum k:LkU;


# instance fields
.field private final a:I

.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 177
    new-instance v0, LkU;

    const-string v1, "DOCUMENT"

    const-string v3, "document"

    sget v4, LcR;->ic_type_doc:I

    sget v5, LcR;->ic_type_doc_big:I

    invoke-direct/range {v0 .. v5}, LkU;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, LkU;->a:LkU;

    .line 178
    new-instance v3, LkU;

    const-string v4, "PDF"

    const-string v6, "pdf"

    sget v7, LcR;->ic_type_pdf:I

    sget v8, LcR;->ic_type_pdf_big:I

    move v5, v11

    invoke-direct/range {v3 .. v8}, LkU;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, LkU;->b:LkU;

    .line 179
    new-instance v3, LkU;

    const-string v4, "PRESENTATION"

    const-string v6, "presentation"

    sget v7, LcR;->ic_type_presentation:I

    sget v8, LcR;->ic_type_presentation_big:I

    move v5, v12

    invoke-direct/range {v3 .. v8}, LkU;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, LkU;->c:LkU;

    .line 181
    new-instance v3, LkU;

    const-string v4, "SPREADSHEET"

    const-string v6, "spreadsheet"

    sget v7, LcR;->ic_type_sheet:I

    sget v8, LcR;->ic_type_sheet_big:I

    move v5, v13

    invoke-direct/range {v3 .. v8}, LkU;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, LkU;->d:LkU;

    .line 183
    new-instance v3, LkU;

    const-string v4, "DRAWING"

    const-string v6, "drawing"

    sget v7, LcR;->ic_type_drawing:I

    sget v8, LcR;->ic_type_drawing_big:I

    move v5, v14

    invoke-direct/range {v3 .. v8}, LkU;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, LkU;->e:LkU;

    .line 185
    new-instance v3, LkU;

    const-string v4, "FORM"

    const/4 v5, 0x5

    const-string v6, "form"

    sget v7, LcR;->ic_type_form:I

    sget v8, LcR;->ic_type_form_big:I

    invoke-direct/range {v3 .. v8}, LkU;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, LkU;->f:LkU;

    .line 186
    new-instance v3, LkU;

    const-string v4, "TABLE"

    const/4 v5, 0x6

    const-string v6, "table"

    sget v7, LcR;->ic_type_fusion:I

    sget v8, LcR;->ic_type_fusion_big:I

    invoke-direct/range {v3 .. v8}, LkU;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, LkU;->g:LkU;

    .line 189
    new-instance v3, LkU;

    const-string v4, "COLLECTION"

    const/4 v5, 0x7

    const-string v6, "folder"

    sget v7, LcR;->ic_type_folder:I

    sget v8, LcR;->ic_type_folder_big:I

    sget v9, LcR;->ic_type_folder_shared:I

    sget v10, LcR;->ic_type_folder_shared_big:I

    invoke-direct/range {v3 .. v10}, LkU;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v3, LkU;->h:LkU;

    .line 191
    new-instance v3, LkU;

    const-string v4, "SITE"

    const/16 v5, 0x8

    const-string v6, "site"

    sget v7, LcR;->ic_type_site:I

    sget v8, LcR;->ic_type_site_big:I

    invoke-direct/range {v3 .. v8}, LkU;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, LkU;->i:LkU;

    .line 192
    new-instance v3, LkU;

    const-string v4, "FILE"

    const/16 v5, 0x9

    const-string v6, "file"

    sget v7, LcR;->ic_type_file:I

    sget v8, LcR;->ic_type_file_big:I

    invoke-direct/range {v3 .. v8}, LkU;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, LkU;->j:LkU;

    .line 193
    new-instance v3, LkU;

    const-string v4, "UNKNOWN"

    const/16 v5, 0xa

    const-string v6, "unknown"

    sget v7, LcR;->ic_type_file:I

    sget v8, LcR;->ic_type_file_big:I

    invoke-direct/range {v3 .. v8}, LkU;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, LkU;->k:LkU;

    .line 176
    const/16 v0, 0xb

    new-array v0, v0, [LkU;

    sget-object v1, LkU;->a:LkU;

    aput-object v1, v0, v2

    sget-object v1, LkU;->b:LkU;

    aput-object v1, v0, v11

    sget-object v1, LkU;->c:LkU;

    aput-object v1, v0, v12

    sget-object v1, LkU;->d:LkU;

    aput-object v1, v0, v13

    sget-object v1, LkU;->e:LkU;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, LkU;->f:LkU;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LkU;->g:LkU;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LkU;->h:LkU;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LkU;->i:LkU;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, LkU;->j:LkU;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, LkU;->k:LkU;

    aput-object v2, v0, v1

    sput-object v0, LkU;->a:[LkU;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, LkU;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    .line 203
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII)V"
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 207
    iput-object p3, p0, LkU;->a:Ljava/lang/String;

    .line 208
    iput p4, p0, LkU;->a:I

    .line 209
    iput p5, p0, LkU;->b:I

    .line 210
    iput p6, p0, LkU;->c:I

    .line 211
    iput p7, p0, LkU;->d:I

    .line 212
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LkU;
    .registers 2
    .parameter

    .prologue
    .line 176
    const-class v0, LkU;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LkU;

    return-object v0
.end method

.method public static values()[LkU;
    .registers 1

    .prologue
    .line 176
    sget-object v0, LkU;->a:[LkU;

    invoke-virtual {v0}, [LkU;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LkU;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 219
    iget v0, p0, LkU;->a:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, LkU;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 223
    iget v0, p0, LkU;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 227
    iget v0, p0, LkU;->c:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 231
    iget v0, p0, LkU;->d:I

    return v0
.end method
