.class public Lcom/estrongs/android/pop/bt/vcard/b;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljava/lang/String;

.field static final q:[Ljava/util/regex/Pattern;

.field static final r:Ljava/util/regex/Pattern;

.field static final s:Ljava/util/regex/Pattern;

.field static final t:Ljava/util/regex/Pattern;

.field static final u:Ljava/util/regex/Pattern;

.field static final v:Ljava/util/regex/Pattern;

.field static final w:Ljava/util/regex/Pattern;


# instance fields
.field b:J

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/bt/vcard/k;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/bt/vcard/k;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/bt/vcard/k;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/bt/vcard/k;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/bt/vcard/j;",
            ">;"
        }
    .end annotation
.end field

.field m:[B

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/bt/vcard/Contact$handleProp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AIM"

    aput-object v1, v0, v4

    const-string v1, "MSN"

    aput-object v1, v0, v5

    const-string v1, "YAHOO"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "SKYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "QQ"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GTALK"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ICQ"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "JABBER"

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/pop/bt/vcard/b;->a:[Ljava/lang/String;

    new-array v0, v3, [Ljava/util/regex/Pattern;

    const-string v1, "[+](1)(\\d\\d\\d)(\\d\\d\\d)(\\d\\d\\d\\d.*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "[+](972)(2|3|4|8|9|50|52|54|57|59|77)(\\d\\d\\d)(\\d\\d\\d\\d.*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/estrongs/android/pop/bt/vcard/b;->q:[Ljava/util/regex/Pattern;

    const-string v0, "BEGIN:VCARD"

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/bt/vcard/b;->r:Ljava/util/regex/Pattern;

    const-string v0, "([^:]+):(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/bt/vcard/b;->s:Ljava/util/regex/Pattern;

    const-string v0, "([^;=]+)(=([^;]+))?(;|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/bt/vcard/b;->t:Ljava/util/regex/Pattern;

    const-string v0, "\\s*([a-zA-Z0-9+/]+={0,2})\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/bt/vcard/b;->u:Ljava/util/regex/Pattern;

    const-string v0, "(([^,]+),(.*))|((.*?)\\s+(\\S+))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/bt/vcard/b;->v:Ljava/util/regex/Pattern;

    const-string v0, "^Birthday::\\s*([^;]+)(;\\s*|\\s*$)"

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/bt/vcard/b;->w:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/bt/vcard/b;->a()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->p:Ljava/util/Hashtable;

    new-instance v0, Lcom/estrongs/android/pop/bt/vcard/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/bt/vcard/c;-><init>(Lcom/estrongs/android/pop/bt/vcard/b;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->p:Ljava/util/Hashtable;

    const-string v2, "FN"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->p:Ljava/util/Hashtable;

    const-string v2, "NOTE"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->p:Ljava/util/Hashtable;

    const-string v2, "BDAY"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->p:Ljava/util/Hashtable;

    const-string v2, "X-IRMC-LUID"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->p:Ljava/util/Hashtable;

    const-string v2, "UID"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->p:Ljava/util/Hashtable;

    const-string v2, "N"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/pop/bt/vcard/d;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/bt/vcard/d;-><init>(Lcom/estrongs/android/pop/bt/vcard/b;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->p:Ljava/util/Hashtable;

    const-string v2, "ORG"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->p:Ljava/util/Hashtable;

    const-string v2, "TITLE"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->p:Ljava/util/Hashtable;

    const-string v1, "TEL"

    new-instance v2, Lcom/estrongs/android/pop/bt/vcard/e;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/bt/vcard/e;-><init>(Lcom/estrongs/android/pop/bt/vcard/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->p:Ljava/util/Hashtable;

    const-string v1, "ADR"

    new-instance v2, Lcom/estrongs/android/pop/bt/vcard/f;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/bt/vcard/f;-><init>(Lcom/estrongs/android/pop/bt/vcard/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->p:Ljava/util/Hashtable;

    const-string v1, "EMAIL"

    new-instance v2, Lcom/estrongs/android/pop/bt/vcard/g;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/bt/vcard/g;-><init>(Lcom/estrongs/android/pop/bt/vcard/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->p:Ljava/util/Hashtable;

    const-string v1, "X-IM-NICK"

    new-instance v2, Lcom/estrongs/android/pop/bt/vcard/h;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/bt/vcard/h;-><init>(Lcom/estrongs/android/pop/bt/vcard/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->p:Ljava/util/Hashtable;

    const-string v1, "PHOTO"

    new-instance v2, Lcom/estrongs/android/pop/bt/vcard/i;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/bt/vcard/i;-><init>(Lcom/estrongs/android/pop/bt/vcard/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a()V
    .registers 4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/estrongs/android/pop/bt/vcard/b;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/bt/vcard/b;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->b:J

    iput-object v2, p0, Lcom/estrongs/android/pop/bt/vcard/b;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/bt/vcard/b;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/bt/vcard/b;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/bt/vcard/b;->m:[B

    iput-object v2, p0, Lcom/estrongs/android/pop/bt/vcard/b;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/bt/vcard/b;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->h:Ljava/util/List;

    if-nez v0, :cond_4d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->h:Ljava/util/List;

    :goto_20
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->i:Ljava/util/List;

    if-nez v0, :cond_53

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->i:Ljava/util/List;

    :goto_2b
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->j:Ljava/util/List;

    if-nez v0, :cond_59

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->j:Ljava/util/List;

    :goto_36
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->l:Ljava/util/List;

    if-nez v0, :cond_5f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->l:Ljava/util/List;

    :goto_41
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->k:Ljava/util/List;

    if-nez v0, :cond_65

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->k:Ljava/util/List;

    :goto_4c
    return-void

    :cond_4d
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_20

    :cond_53
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_2b

    :cond_59
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_36

    :cond_5f
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_41

    :cond_65
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_4c
.end method

.method private a(Landroid/database/Cursor;)V
    .registers 5

    const/4 v2, 0x1

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->c:Ljava/lang/String;

    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_88

    sget-object v0, Lcom/estrongs/android/pop/bt/vcard/b;->v:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_70

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->g:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->f:Ljava/lang/String;

    :goto_43
    const-string v0, "notes"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->n:Ljava/lang/String;

    if-eqz v0, :cond_6f

    sget-object v0, Lcom/estrongs/android/pop/bt/vcard/b;->w:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->o:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->n:Ljava/lang/String;

    :cond_6f
    return-void

    :cond_70
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->f:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->g:Ljava/lang/String;

    goto :goto_43

    :cond_7f
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->g:Ljava/lang/String;

    goto :goto_43

    :cond_88
    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->f:Ljava/lang/String;

    goto :goto_43
.end method

.method public static a(Ljava/lang/Appendable;Lcom/estrongs/android/pop/bt/vcard/j;)V
    .registers 4

    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/j;->c:Ljava/lang/String;

    if-eqz v0, :cond_48

    const-string v0, "ORG"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/j;->d:Ljava/lang/String;

    if-eqz v0, :cond_17

    const-string v0, ";LABEL="

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/j;->d:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_17
    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/j;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/vcard/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, ";CHARSET=UTF-8"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_24
    const-string v0, ":"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/bt/vcard/j;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/j;->b:Ljava/lang/String;

    if-nez v0, :cond_48

    const-string v0, "TITLE:"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_48
    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/j;->b:Ljava/lang/String;

    if-eqz v0, :cond_90

    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/j;->c:Ljava/lang/String;

    if-nez v0, :cond_5b

    const-string v0, "ORG:"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_5b
    const-string v0, "TITLE"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/j;->d:Ljava/lang/String;

    if-eqz v0, :cond_6e

    const-string v0, ";LABEL="

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/j;->d:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_6e
    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/j;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/vcard/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, ";CHARSET=UTF-8"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_7b
    const-string v0, ":"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/bt/vcard/j;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_90
    return-void
.end method

.method public static a(Ljava/lang/Appendable;Lcom/estrongs/android/pop/bt/vcard/k;)V
    .registers 4

    const-string v0, "EMAIL;INTERNET"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-boolean v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->c:Z

    if-eqz v0, :cond_e

    const-string v0, ";PREF"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_e
    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const-string v0, ";LABEL="

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->d:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1c
    iget v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->a:I

    packed-switch v0, :pswitch_data_4a

    :goto_21
    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/vcard/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, ";CHARSET=UTF-8"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_2e
    const-string v0, ":"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/bt/vcard/k;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :pswitch_44
    const-string v0, ";WORK"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_21

    :pswitch_data_4a
    .packed-switch 0x2
        :pswitch_44
    .end packed-switch
.end method

.method private static a(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p2, :cond_25

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_25

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-static {p2}, Lcom/estrongs/android/pop/bt/vcard/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, ";CHARSET=UTF-8"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_16
    const-string v0, ":"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_25
    return-void
.end method

.method private b(Landroid/database/Cursor;)V
    .registers 8

    const-string v0, "company"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v0, 0x0

    if-nez v3, :cond_2b

    const-string v0, "label"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2b
    iget-object v4, p0, Lcom/estrongs/android/pop/bt/vcard/b;->l:Ljava/util/List;

    new-instance v5, Lcom/estrongs/android/pop/bt/vcard/j;

    invoke-direct {v5, v3, v2, v1, v0}, Lcom/estrongs/android/pop/bt/vcard/j;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Ljava/lang/Appendable;Lcom/estrongs/android/pop/bt/vcard/k;)V
    .registers 4

    const-string v0, "TEL"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-boolean v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->c:Z

    if-eqz v0, :cond_e

    const-string v0, ";PREF"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_e
    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const-string v0, ";LABEL="

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->d:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1c
    iget v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->a:I

    packed-switch v0, :pswitch_data_68

    :goto_21
    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/vcard/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, ";CHARSET=UTF-8"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_2e
    const-string v0, ":"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/bt/vcard/k;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :pswitch_44
    const-string v0, ";VOICE"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_21

    :pswitch_4a
    const-string v0, ";VOICE;WORK"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_21

    :pswitch_50
    const-string v0, ";FAX;WORK"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_21

    :pswitch_56
    const-string v0, ";FAX;HOME"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_21

    :pswitch_5c
    const-string v0, ";CELL"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_21

    :pswitch_62
    const-string v0, ";PAGER"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_21

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_44
        :pswitch_5c
        :pswitch_4a
        :pswitch_50
        :pswitch_56
        :pswitch_62
    .end packed-switch
.end method

.method private c(Landroid/database/Cursor;)V
    .registers 8

    const/4 v0, 0x0

    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "isprimary"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x1

    :goto_22
    if-nez v2, :cond_2e

    const-string v0, "label"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2e
    iget-object v3, p0, Lcom/estrongs/android/pop/bt/vcard/b;->h:Ljava/util/List;

    new-instance v5, Lcom/estrongs/android/pop/bt/vcard/k;

    invoke-direct {v5, v2, v4, v1, v0}, Lcom/estrongs/android/pop/bt/vcard/k;-><init>(ILjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_39
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public static c(Ljava/lang/Appendable;Lcom/estrongs/android/pop/bt/vcard/k;)V
    .registers 6

    const-string v0, "ADR"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-boolean v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->c:Z

    if-eqz v0, :cond_e

    const-string v0, ";PREF"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_e
    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const-string v0, ";LABEL="

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->d:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1c
    iget v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->a:I

    packed-switch v0, :pswitch_data_58

    :goto_21
    :pswitch_21
    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/vcard/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, ";CHARSET=UTF-8"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_2e
    const-string v0, ":;;"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/bt/vcard/k;->b:Ljava/lang/String;

    const-string v2, ", "

    const-string v3, ";"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :pswitch_4c
    const-string v0, ";HOME"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_21

    :pswitch_52
    const-string v0, ";WORK"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_21

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_21
        :pswitch_52
    .end packed-switch
.end method

.method private d(Landroid/database/Cursor;)V
    .registers 10

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v2, "data"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "kind"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "isprimary"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3e

    move v2, v3

    :goto_2e
    if-nez v4, :cond_3a

    const-string v0, "label"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3a
    packed-switch v5, :pswitch_data_ae

    :goto_3d
    return-void

    :cond_3e
    move v2, v1

    goto :goto_2e

    :pswitch_40
    iget-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->i:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/pop/bt/vcard/k;

    invoke-direct {v3, v4, v7, v2, v0}, Lcom/estrongs/android/pop/bt/vcard/k;-><init>(ILjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :pswitch_4b
    iget-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->j:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/pop/bt/vcard/k;

    invoke-direct {v3, v4, v7, v2, v0}, Lcom/estrongs/android/pop/bt/vcard/k;-><init>(ILjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :pswitch_56
    new-instance v5, Lcom/estrongs/android/pop/bt/vcard/k;

    invoke-direct {v5, v4, v7, v2, v0}, Lcom/estrongs/android/pop/bt/vcard/k;-><init>(ILjava/lang/String;ZLjava/lang/String;)V

    const-string v0, "aux_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_93

    const-string v2, ":"

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/bt/vcard/m;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    if-le v4, v3, :cond_ab

    aget-object v0, v2, v1

    const-string v4, "pre"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const/4 v0, 0x1

    :try_start_7b
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_84} :catch_99

    move-result v0

    :goto_85
    if-ltz v0, :cond_8c

    sget-object v2, Lcom/estrongs/android/pop/bt/vcard/b;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_8d

    :cond_8c
    move v0, v1

    :cond_8d
    sget-object v1, Lcom/estrongs/android/pop/bt/vcard/b;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    iput-object v0, v5, Lcom/estrongs/android/pop/bt/vcard/k;->e:Ljava/lang/String;

    :cond_93
    :goto_93
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->k:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :catch_99
    move-exception v0

    move v0, v1

    goto :goto_85

    :cond_9c
    aget-object v0, v2, v1

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    aget-object v0, v2, v3

    iput-object v0, v5, Lcom/estrongs/android/pop/bt/vcard/k;->e:Ljava/lang/String;

    goto :goto_93

    :cond_ab
    iput-object v0, v5, Lcom/estrongs/android/pop/bt/vcard/k;->e:Ljava/lang/String;

    goto :goto_93

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_40
        :pswitch_4b
        :pswitch_56
    .end packed-switch
.end method

.method public static d(Ljava/lang/Appendable;Lcom/estrongs/android/pop/bt/vcard/k;)V
    .registers 4

    const-string v0, "X-IM-NICK"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-boolean v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->c:Z

    if-eqz v0, :cond_e

    const-string v0, ";PREF"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_e
    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const-string v0, ";LABEL="

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->d:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1c
    iget v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->a:I

    packed-switch v0, :pswitch_data_6c

    :goto_21
    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->e:Ljava/lang/String;

    if-eqz v0, :cond_3c

    const-string v0, ";"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "PROTO"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "="

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/bt/vcard/k;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_3c
    iget-object v0, p1, Lcom/estrongs/android/pop/bt/vcard/k;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/vcard/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, ";CHARSET=UTF-8"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_49
    const-string v0, ":"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/bt/vcard/k;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :pswitch_5f
    const-string v0, ";HOME"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_21

    :pswitch_65
    const-string v0, ";WORK"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_21

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_65
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    .registers 10

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/bt/vcard/b;->a()V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/vcard/b;->a(Landroid/database/Cursor;)V

    iget-object v6, p0, Lcom/estrongs/android/pop/bt/vcard/b;->c:Ljava/lang/String;

    sget-object v1, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "person="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_27
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/bt/vcard/b;->b(Landroid/database/Cursor;)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_27

    :cond_30
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "person="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5a

    :cond_51
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/bt/vcard/b;->c(Landroid/database/Cursor;)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_51

    :cond_5a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "person="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_84

    :cond_7b
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/bt/vcard/b;->d(Landroid/database/Cursor;)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_7b

    :cond_84
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    sget-object v1, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "person="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_b1

    const-string v1, "data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->m:[B

    :cond_b1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public a(Ljava/lang/Appendable;)V
    .registers 5

    const-string v0, "BEGIN:VCARD"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v0, "VERSION:2.1"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v0, "X-IRMC-LUID"

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/estrongs/android/pop/bt/vcard/b;->a(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "N"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/vcard/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/vcard/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    :cond_32
    const-string v0, ";CHARSET=UTF-8"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_37
    const-string v0, ":"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_47
    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, ";"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_5b
    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, ";"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, ";"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, ";"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f2

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_88
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_fc

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_94
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_106

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_110

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ac
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11a

    const-string v0, "NOTE"

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->n:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/estrongs/android/pop/bt/vcard/b;->a(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BDAY"

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/vcard/b;->o:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/estrongs/android/pop/bt/vcard/b;->a(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->m:[B

    if-eqz v0, :cond_de

    const-string v0, "PHOTO;TYPE=JPEG;ENCODING=BASE64"

    const-string v1, " "

    invoke-static {p1, v0, v1}, Lcom/estrongs/android/pop/bt/vcard/b;->a(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/vcard/b;->m:[B

    const/16 v1, 0x4c

    const-string v2, "\r\n"

    invoke-static {p1, v0, v1, v2}, Lcom/estrongs/android/pop/bt/vcard/a;->a(Ljava/lang/Appendable;[BILjava/lang/String;)V

    const-string v0, "\r\n"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v0, "\r\n"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_de
    const-string v0, "END:VCARD"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_ea
    const-string v0, ""

    goto/16 :goto_47

    :cond_ee
    const-string v0, ""

    goto/16 :goto_5b

    :cond_f2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/bt/vcard/k;

    invoke-static {p1, v0}, Lcom/estrongs/android/pop/bt/vcard/b;->a(Ljava/lang/Appendable;Lcom/estrongs/android/pop/bt/vcard/k;)V

    goto :goto_7c

    :cond_fc
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/bt/vcard/k;

    invoke-static {p1, v0}, Lcom/estrongs/android/pop/bt/vcard/b;->b(Ljava/lang/Appendable;Lcom/estrongs/android/pop/bt/vcard/k;)V

    goto :goto_88

    :cond_106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/bt/vcard/j;

    invoke-static {p1, v0}, Lcom/estrongs/android/pop/bt/vcard/b;->a(Ljava/lang/Appendable;Lcom/estrongs/android/pop/bt/vcard/j;)V

    goto :goto_94

    :cond_110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/bt/vcard/k;

    invoke-static {p1, v0}, Lcom/estrongs/android/pop/bt/vcard/b;->c(Ljava/lang/Appendable;Lcom/estrongs/android/pop/bt/vcard/k;)V

    goto :goto_a0

    :cond_11a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/bt/vcard/k;

    invoke-static {p1, v0}, Lcom/estrongs/android/pop/bt/vcard/b;->d(Ljava/lang/Appendable;Lcom/estrongs/android/pop/bt/vcard/k;)V

    goto :goto_ac
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_5
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/bt/vcard/b;->a(Ljava/lang/Appendable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    :goto_8
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v1

    goto :goto_8
.end method
