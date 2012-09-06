.class public enum Lnk;
.super Ljava/lang/Enum;
.source "EntriesFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnk;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "LsO;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:Lnk;

.field private static final synthetic a:[Lnk;

.field public static final enum b:Lnk;

.field public static final enum c:Lnk;

.field public static final enum d:Lnk;

.field public static final enum e:Lnk;

.field public static final enum f:Lnk;

.field public static final enum g:Lnk;

.field public static final enum h:Lnk;

.field public static final enum i:Lnk;

.field public static final enum j:Lnk;

.field public static final enum k:Lnk;

.field public static final enum l:Lnk;

.field public static final enum m:Lnk;

.field public static final enum n:Lnk;

.field public static final enum o:Lnk;

.field public static final enum p:Lnk;

.field public static final enum q:Lnk;

.field public static final enum r:Lnk;

.field public static final enum s:Lnk;

.field public static final enum t:Lnk;

.field public static final enum u:Lnk;


# instance fields
.field private final a:I

.field private final a:LSR;

.field private final a:Ljava/lang/String;

.field private final a:Lnq;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    .line 32
    new-instance v0, Lnk;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "1=1"

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, LcY;->slider_title_all_items:I

    const-string v7, "allItems"

    sget-object v8, LSR;->a:LSR;

    invoke-direct/range {v0 .. v8}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->a:Lnk;

    .line 34
    new-instance v0, Lnk;

    const-string v1, "ACTIVE"

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->s:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, LcY;->menu_show_activity:I

    const-string v7, "home"

    const-string v8, "-hidden"

    invoke-static {v8}, LSR;->b(Ljava/lang/String;)LSR;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->b:Lnk;

    .line 37
    new-instance v0, Lnk;

    const-string v1, "STARRED"

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->r:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<>0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, LcY;->menu_show_starred:I

    const-string v7, "starred"

    const-string v8, "starred"

    invoke-static {v8}, LSR;->b(Ljava/lang/String;)LSR;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->c:Lnk;

    .line 40
    new-instance v0, Lnl;

    const-string v1, "PINNED"

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->u:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<>0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, LcY;->menu_show_pinned:I

    const-string v7, "pinned"

    sget-object v8, LSR;->d:LSR;

    invoke-direct/range {v0 .. v8}, Lnl;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->d:Lnk;

    .line 48
    new-instance v0, Lnk;

    const-string v1, "KIX"

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->p:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, LkU;->a:LkU;

    invoke-virtual {v4}, LkU;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, LcY;->menu_show_kix:I

    const/4 v7, 0x0

    const-string v8, "document"

    invoke-static {v8}, LSR;->a(Ljava/lang/String;)LSR;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->e:Lnk;

    .line 50
    new-instance v0, Lnk;

    const-string v1, "TRIX"

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->p:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, LkU;->d:LkU;

    invoke-virtual {v4}, LkU;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, LcY;->menu_show_trix:I

    const/4 v7, 0x0

    const-string v8, "spreadsheet"

    invoke-static {v8}, LSR;->a(Ljava/lang/String;)LSR;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->f:Lnk;

    .line 53
    new-instance v0, Lnk;

    const-string v1, "PUNCH"

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->p:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, LkU;->c:LkU;

    invoke-virtual {v4}, LkU;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, LcY;->menu_show_punch:I

    const/4 v7, 0x0

    const-string v8, "presentation"

    invoke-static {v8}, LSR;->a(Ljava/lang/String;)LSR;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->g:Lnk;

    .line 56
    new-instance v0, Lnk;

    const-string v1, "DRAWINGS"

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->p:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, LkU;->e:LkU;

    invoke-virtual {v4}, LkU;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, LcY;->menu_show_drawing:I

    const/4 v7, 0x0

    const-string v8, "drawing"

    invoke-static {v8}, LSR;->a(Ljava/lang/String;)LSR;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->h:Lnk;

    .line 59
    new-instance v0, Lnk;

    const-string v1, "PICTURES"

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->o:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LIKE \'image%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, LcY;->menu_show_picture:I

    const/4 v7, 0x0

    sget-object v8, LSR;->b:LSR;

    invoke-direct/range {v0 .. v8}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->i:Lnk;

    .line 62
    new-instance v0, Lnk;

    const-string v1, "MOVIES"

    const/16 v2, 0x9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->o:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LIKE \'video%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, LcY;->menu_show_movie:I

    const/4 v7, 0x0

    sget-object v8, LSR;->b:LSR;

    invoke-direct/range {v0 .. v8}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->j:Lnk;

    .line 65
    new-instance v0, Lnk;

    const-string v1, "PDF"

    const/16 v2, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->p:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, LkU;->b:LkU;

    invoke-virtual {v4}, LkU;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, LcY;->menu_show_pdf:I

    const/4 v7, 0x0

    const-string v8, "pdf"

    invoke-static {v8}, LSR;->a(Ljava/lang/String;)LSR;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->k:Lnk;

    .line 68
    new-instance v0, Lnk;

    const-string v1, "OWNED_BY_ME"

    const/16 v2, 0xb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->b:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, LMj;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    sget-object v5, Lnq;->a:Lnq;

    sget v6, LcY;->menu_show_owned_by_me:I

    const-string v7, "ownedByMe"

    const-string v8, "mine"

    invoke-static {v8}, LSR;->b(Ljava/lang/String;)LSR;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->l:Lnk;

    .line 72
    new-instance v0, Lnk;

    const-string v1, "MEDIA"

    const/16 v2, 0xc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->o:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LIKE \'image%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, LcY;->titlebar_media:I

    const/4 v7, 0x0

    sget-object v8, LSR;->b:LSR;

    invoke-direct/range {v0 .. v8}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->m:Lnk;

    .line 75
    new-instance v0, Lnk;

    const-string v1, "DOCUMENTS"

    const/16 v2, 0xd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->p:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, LkU;->c:LkU;

    invoke-virtual {v4}, LkU;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, LMk;->p:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, LkU;->a:LkU;

    invoke-virtual {v4}, LkU;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, LMk;->p:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, LkU;->b:LkU;

    invoke-virtual {v4}, LkU;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, LMk;->p:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, LkU;->d:LkU;

    invoke-virtual {v4}, LkU;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, LMk;->p:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, LkU;->e:LkU;

    invoke-virtual {v4}, LkU;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, LcY;->titlebar_documents:I

    const/4 v7, 0x0

    sget-object v8, LSR;->b:LSR;

    invoke-direct/range {v0 .. v8}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->n:Lnk;

    .line 84
    new-instance v0, Lnk;

    const-string v1, "MY_TOP_COLLECTIONS"

    const/16 v2, 0xe

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LLR;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, LMk;->b:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    sget-object v5, Lnq;->a:Lnq;

    sget v6, LcY;->navigation_my_collections:I

    const-string v7, "collections"

    sget-object v8, LSR;->c:LSR;

    invoke-direct/range {v0 .. v8}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->o:Lnk;

    .line 89
    new-instance v0, Lnk;

    const-string v1, "SHARED_TOP_COLLECTIONS"

    const/16 v2, 0xf

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LLR;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, LMk;->b:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<>?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    sget-object v5, Lnq;->a:Lnq;

    sget v6, LcY;->navigation_shared_collections:I

    const-string v7, "collections"

    sget-object v8, LSR;->c:LSR;

    invoke-direct/range {v0 .. v8}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->p:Lnk;

    .line 96
    new-instance v0, Lnk;

    const-string v1, "TRASH"

    const/16 v2, 0x10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->t:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<>0 AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, LMk;->b:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lnq;->a:Lnq;

    sget v6, LcY;->menu_show_trash:I

    const-string v7, "trash"

    sget-object v8, LSR;->b:LSR;

    invoke-direct/range {v0 .. v8}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->q:Lnk;

    .line 100
    new-instance v0, Lnm;

    const-string v1, "SHARED_WITH_ME"

    const/16 v2, 0x11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->i:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IS NOT NULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, LcY;->menu_shared_with_me:I

    const-string v7, "sharedWithMe"

    sget-object v8, LSR;->a:LSR;

    invoke-direct/range {v0 .. v8}, Lnm;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->r:Lnk;

    .line 113
    new-instance v0, Lnn;

    const-string v1, "OPENED_BY_ME"

    const/16 v2, 0x12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->h:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IS NOT NULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, LMj;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, LcY;->menu_show_recent:I

    const-string v7, "recentlyOpened"

    sget-object v8, LSR;->a:LSR;

    invoke-direct/range {v0 .. v8}, Lnn;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->s:Lnk;

    .line 127
    new-instance v0, Lno;

    const-string v1, "EDITED_BY_ME"

    const/16 v2, 0x13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->k:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IS NOT NULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, LMj;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, LcY;->menu_show_recently_edited_by_me:I

    const-string v7, "recentlyEditedByMe"

    sget-object v8, LSR;->a:LSR;

    invoke-direct/range {v0 .. v8}, Lno;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->t:Lnk;

    .line 141
    new-instance v0, Lnp;

    const-string v1, "MY_DRIVE"

    const/16 v2, 0x14

    invoke-static {}, LLR;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, LcY;->menu_my_drive:I

    const-string v7, "myDrive"

    const-string v8, "root"

    invoke-static {v8}, LSR;->c(Ljava/lang/String;)LSR;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lnp;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    sput-object v0, Lnk;->u:Lnk;

    .line 29
    const/16 v0, 0x15

    new-array v0, v0, [Lnk;

    const/4 v1, 0x0

    sget-object v2, Lnk;->a:Lnk;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnk;->b:Lnk;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnk;->c:Lnk;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnk;->d:Lnk;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnk;->e:Lnk;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lnk;->f:Lnk;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnk;->g:Lnk;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnk;->h:Lnk;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnk;->i:Lnk;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lnk;->j:Lnk;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lnk;->k:Lnk;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lnk;->l:Lnk;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lnk;->m:Lnk;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lnk;->n:Lnk;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lnk;->o:Lnk;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lnk;->p:Lnk;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lnk;->q:Lnk;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lnk;->r:Lnk;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lnk;->s:Lnk;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lnk;->t:Lnk;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lnk;->u:Lnk;

    aput-object v2, v0, v1

    sput-object v0, Lnk;->a:[Lnk;

    .line 150
    sget-object v0, LsO;->c:LsO;

    sget-object v1, LsO;->d:LsO;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lnk;->a:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V
    .registers 12
    .parameter
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
            "Z",
            "Lnq;",
            "I",
            "Ljava/lang/String;",
            "LSR;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 189
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    if-nez p4, :cond_1c

    :goto_b
    iput-object v0, p0, Lnk;->a:Ljava/lang/String;

    .line 192
    iput-object p5, p0, Lnk;->a:Lnq;

    .line 193
    iput p6, p0, Lnk;->a:I

    .line 194
    iput-object p7, p0, Lnk;->b:Ljava/lang/String;

    .line 195
    invoke-static {p8}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSR;

    iput-object v0, p0, Lnk;->a:LSR;

    .line 196
    return-void

    .line 190
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, LMj;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;Lnl;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct/range {p0 .. p8}, Lnk;-><init>(Ljava/lang/String;ILjava/lang/String;ZLnq;ILjava/lang/String;LSR;)V

    return-void
.end method

.method static synthetic b()Ljava/util/EnumSet;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lnk;->a:Ljava/util/EnumSet;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnk;
    .registers 2
    .parameter

    .prologue
    .line 29
    const-class v0, Lnk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnk;

    return-object v0
.end method

.method public static values()[Lnk;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lnk;->a:[Lnk;

    invoke-virtual {v0}, [Lnk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnk;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lnk;->a:I

    return v0
.end method

.method public a()LSR;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lnk;->a:LSR;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lnk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "LsO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    sget-object v0, LsO;->e:LsO;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public a(LkG;)LnL;
    .registers 5
    .parameter

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    iget-object v1, p0, Lnk;->a:Lnq;

    sget-object v2, Lnq;->a:Lnq;

    if-ne v1, v2, :cond_b

    .line 220
    invoke-virtual {p1}, LkG;->b()Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_b
    new-instance v1, LnL;

    iget-object v2, p0, Lnk;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, LnL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public a()LsO;
    .registers 2

    .prologue
    .line 226
    sget-object v0, LsO;->b:LsO;

    return-object v0
.end method
