.class public Lhq;
.super Ljava/lang/Object;
.source "ShortcutDefinition.java"


# static fields
.field private static final a:[Lhq;

.field private static final b:[Lhq;


# instance fields
.field private final a:I

.field private final a:LdX;

.field private final a:Lhr;

.field private final a:Lhs;

.field private final a:Ljava/lang/String;

.field private final a:Lnk;

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    .line 40
    const/16 v0, 0xc

    new-array v9, v0, [Lhq;

    const/4 v10, 0x0

    new-instance v0, Lhq;

    sget-object v1, Lnk;->b:Lnk;

    sget v2, LcY;->navigation_home:I

    sget v3, LcR;->ic_home:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->a:Lhs;

    const/4 v6, 0x2

    sget-object v7, LdX;->a:LdX;

    const-string v8, "home"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/4 v10, 0x1

    new-instance v0, Lhq;

    sget-object v1, Lnk;->a:Lnk;

    sget v2, LcY;->navigation_all_items:I

    sget v3, LcR;->home_screen_docs_all_items:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->a:Lhs;

    const/4 v6, 0x1

    sget-object v7, LdX;->a:LdX;

    const-string v8, "allItems"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/4 v10, 0x2

    new-instance v0, Lhq;

    sget-object v1, Lnk;->o:Lnk;

    sget v2, LcY;->home_collections:I

    sget v3, LcR;->home_screen_docs_collections:I

    sget-object v4, Lhr;->b:Lhr;

    sget-object v5, Lhs;->a:Lhs;

    const/4 v6, 0x1

    sget-object v7, LdX;->a:LdX;

    const-string v8, "collections"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/4 v10, 0x3

    new-instance v0, Lhq;

    sget-object v1, Lnk;->l:Lnk;

    sget-object v2, Lnk;->l:Lnk;

    invoke-virtual {v2}, Lnk;->a()I

    move-result v2

    sget v3, LcR;->home_screen_docs_owned_by_me:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->a:Lhs;

    const/4 v6, 0x3

    sget-object v7, LdX;->a:LdX;

    const-string v8, "ownedByMe"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/4 v10, 0x4

    new-instance v0, Lhq;

    sget-object v1, Lnk;->c:Lnk;

    sget-object v2, Lnk;->c:Lnk;

    invoke-virtual {v2}, Lnk;->a()I

    move-result v2

    sget v3, LcR;->home_screen_docs_star:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->a:Lhs;

    const/4 v6, 0x3

    sget-object v7, LdX;->a:LdX;

    const-string v8, "starred"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/4 v10, 0x5

    new-instance v0, Lhq;

    sget-object v1, Lnk;->n:Lnk;

    sget-object v2, Lnk;->n:Lnk;

    invoke-virtual {v2}, Lnk;->a()I

    move-result v2

    sget v3, LcR;->home_screen_docs_documents:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->a:Lhs;

    const/4 v6, 0x1

    sget-object v7, LdX;->a:LdX;

    const-string v8, "documents"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/4 v10, 0x6

    new-instance v0, Lhq;

    sget-object v1, Lnk;->m:Lnk;

    sget v2, LcY;->home_images:I

    sget v3, LcR;->home_screen_docs_imagesandvideos:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->a:Lhs;

    const/4 v6, 0x1

    sget-object v7, LdX;->a:LdX;

    const-string v8, "media"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/4 v10, 0x7

    new-instance v0, Lhq;

    sget-object v1, Lnk;->d:Lnk;

    sget-object v2, Lnk;->d:Lnk;

    invoke-virtual {v2}, Lnk;->a()I

    move-result v2

    sget v3, LcR;->ic_pin:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->a:Lhs;

    const/4 v6, 0x3

    sget-object v7, LeV;->j:LeV;

    iget-object v7, v7, LeV;->a:LdX;

    const-string v8, "pinned"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x8

    new-instance v0, Lhq;

    sget-object v1, Lnk;->a:Lnk;

    sget v2, LcY;->navigation_all_items:I

    sget v3, LcR;->home_screen_docs_all_items:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->a:Lhs;

    const/4 v6, 0x2

    sget-object v7, LdX;->a:LdX;

    const-string v8, "allItems"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x9

    new-instance v0, Lhq;

    sget-object v1, Lnk;->e:Lnk;

    sget v2, LcY;->menu_show_kix:I

    sget v3, LcR;->home_screen_docs_textdocs:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->b:Lhs;

    const/4 v6, 0x1

    sget-object v7, LdX;->a:LdX;

    const-string v8, "documents"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xa

    new-instance v0, Lhq;

    sget-object v1, Lnk;->f:Lnk;

    sget v2, LcY;->menu_show_trix:I

    sget v3, LcR;->home_screen_docs_spreadsheets:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->b:Lhs;

    const/4 v6, 0x1

    sget-object v7, LdX;->a:LdX;

    const-string v8, "documents"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xb

    new-instance v0, Lhq;

    sget-object v1, Lnk;->g:Lnk;

    sget v2, LcY;->menu_show_punch:I

    sget v3, LcR;->home_screen_docs_presentations:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->b:Lhs;

    const/4 v6, 0x1

    sget-object v7, LdX;->a:LdX;

    const-string v8, "documents"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    sput-object v9, Lhq;->a:[Lhq;

    .line 106
    const/4 v0, 0x7

    new-array v9, v0, [Lhq;

    const/4 v10, 0x0

    new-instance v0, Lhq;

    sget-object v1, Lnk;->u:Lnk;

    sget-object v2, Lnk;->u:Lnk;

    invoke-virtual {v2}, Lnk;->a()I

    move-result v2

    sget v3, LcR;->ic_drive_my_drive:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->a:Lhs;

    const/4 v6, 0x3

    sget-object v7, LdX;->a:LdX;

    const-string v8, "myDrive"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/4 v10, 0x1

    new-instance v0, Lhq;

    sget-object v1, Lnk;->r:Lnk;

    sget-object v2, Lnk;->r:Lnk;

    invoke-virtual {v2}, Lnk;->a()I

    move-result v2

    sget v3, LcR;->ic_drive_shared_with_me:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->a:Lhs;

    const/4 v6, 0x3

    sget-object v7, LdX;->a:LdX;

    const-string v8, "sharedWithMe"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/4 v10, 0x2

    new-instance v0, Lhq;

    sget-object v1, Lnk;->c:Lnk;

    sget-object v2, Lnk;->c:Lnk;

    invoke-virtual {v2}, Lnk;->a()I

    move-result v2

    sget v3, LcR;->ic_drive_starred:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->a:Lhs;

    const/4 v6, 0x3

    sget-object v7, LdX;->a:LdX;

    const-string v8, "starred"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/4 v10, 0x3

    new-instance v0, Lhq;

    sget-object v1, Lnk;->s:Lnk;

    sget-object v2, Lnk;->s:Lnk;

    invoke-virtual {v2}, Lnk;->a()I

    move-result v2

    sget v3, LcR;->ic_drive_recently_opened:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->a:Lhs;

    const/4 v6, 0x3

    sget-object v7, LdX;->a:LdX;

    const-string v8, "recentlyOpened"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/4 v10, 0x4

    new-instance v0, Lhq;

    sget-object v1, Lnk;->d:Lnk;

    sget-object v2, Lnk;->d:Lnk;

    invoke-virtual {v2}, Lnk;->a()I

    move-result v2

    sget v3, LcR;->ic_drive_offline:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->a:Lhs;

    const/4 v6, 0x3

    sget-object v7, LeV;->j:LeV;

    iget-object v7, v7, LeV;->a:LdX;

    const-string v8, "pinned"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/4 v10, 0x5

    new-instance v0, Lhq;

    sget-object v1, Lnk;->a:Lnk;

    sget v2, LcY;->navigation_all_items:I

    sget v3, LcR;->ic_drive_all_items:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->c:Lhs;

    const/4 v6, 0x3

    sget-object v7, LdX;->a:LdX;

    const-string v8, "allItems"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/4 v10, 0x6

    new-instance v0, Lhq;

    sget-object v1, Lnk;->l:Lnk;

    sget-object v2, Lnk;->l:Lnk;

    invoke-virtual {v2}, Lnk;->a()I

    move-result v2

    sget v3, LcR;->ic_drive_owned_by_me:I

    sget-object v4, Lhr;->a:Lhr;

    sget-object v5, Lhs;->c:Lhs;

    const/4 v6, 0x3

    sget-object v7, LdX;->a:LdX;

    const-string v8, "ownedByMe"

    invoke-direct/range {v0 .. v8}, Lhq;-><init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V

    aput-object v0, v9, v10

    sput-object v9, Lhq;->b:[Lhq;

    return-void
.end method

.method private constructor <init>(Lnk;IILhr;Lhs;ILdX;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lhq;->a:Lnk;

    .line 213
    iput p2, p0, Lhq;->a:I

    .line 214
    iput p3, p0, Lhq;->b:I

    .line 215
    iput-object p4, p0, Lhq;->a:Lhr;

    .line 216
    iput-object p5, p0, Lhq;->a:Lhs;

    .line 217
    iput p6, p0, Lhq;->c:I

    .line 218
    iput-object p7, p0, Lhq;->a:LdX;

    .line 219
    iput-object p8, p0, Lhq;->a:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public static a(IILdX;)[Lhq;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 271
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 274
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_25

    .line 275
    sget-object v0, Lhq;->a:[Lhq;

    .line 279
    :goto_c
    array-length v4, v0

    move v1, v2

    :goto_e
    if-ge v1, v4, :cond_28

    aget-object v5, v0, v1

    .line 280
    iget v6, v5, Lhq;->c:I

    and-int/2addr v6, p1

    if-eqz v6, :cond_22

    iget-object v6, v5, Lhq;->a:LdX;

    invoke-virtual {p2, v6}, LdX;->a(LdX;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 282
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 277
    :cond_25
    sget-object v0, Lhq;->b:[Lhq;

    goto :goto_c

    .line 286
    :cond_28
    new-array v0, v2, [Lhq;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhq;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Lhq;->b:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lhq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Lnk;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lhq;->a:Lnk;

    return-object v0
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 256
    iget-object v0, p0, Lhq;->a:Lhr;

    sget-object v1, Lhr;->b:Lhr;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a(Lhs;)Z
    .registers 3
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lhq;->a:Lhs;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()I
    .registers 2

    .prologue
    .line 246
    iget v0, p0, Lhq;->a:I

    return v0
.end method
