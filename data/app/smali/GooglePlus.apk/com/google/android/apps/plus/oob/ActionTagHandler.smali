.class public Lcom/google/android/apps/plus/oob/ActionTagHandler;
.super Ljava/lang/Object;
.source "ActionTagHandler.java"

# interfaces
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionClickableSpan;,
        Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionId;,
        Lcom/google/android/apps/plus/oob/ActionTagHandler$Callback;
    }
.end annotation


# static fields
.field static final ACTION_RE:Ljava/util/regex/Pattern;


# instance fields
.field private final mActionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/google/android/apps/plus/oob/ActionTagHandler$Callback;

.field private mIndex:I

.field private final mLinkColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string v0, "<action\\s+id=[\'\"](\\d+)[\'\"]>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/oob/ActionTagHandler;->ACTION_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/google/android/apps/plus/oob/ActionTagHandler$Callback;)V
    .registers 5
    .parameter
    .parameter "linkColor"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/google/android/apps/plus/oob/ActionTagHandler$Callback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, actionIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/apps/plus/oob/ActionTagHandler;->mActionIds:Ljava/util/List;

    .line 83
    iput p2, p0, Lcom/google/android/apps/plus/oob/ActionTagHandler;->mLinkColor:I

    .line 84
    iput-object p3, p0, Lcom/google/android/apps/plus/oob/ActionTagHandler;->mCallback:Lcom/google/android/apps/plus/oob/ActionTagHandler$Callback;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/oob/ActionTagHandler;->mIndex:I

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/oob/ActionTagHandler;)Lcom/google/android/apps/plus/oob/ActionTagHandler$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/ActionTagHandler;->mCallback:Lcom/google/android/apps/plus/oob/ActionTagHandler$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/oob/ActionTagHandler;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/apps/plus/oob/ActionTagHandler;->mLinkColor:I

    return v0
.end method

.method public static findActionIds(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, actionIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcom/google/android/apps/plus/oob/ActionTagHandler;->ACTION_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 96
    .local v1, matcher:Ljava/util/regex/Matcher;
    :goto_b
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 97
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 99
    :cond_1a
    return-object v0
.end method

.method private getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, kind:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {p1, v2, v3, p2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 139
    .local v1, objects:[Ljava/lang/Object;
    array-length v2, v1

    if-lez v2, :cond_23

    .line 140
    array-length v0, v1

    .local v0, i:I
    :goto_d
    if-lez v0, :cond_23

    .line 141
    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_20

    .line 142
    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    .line 146
    .end local v0           #i:I
    :goto_1f
    return-object v2

    .line 140
    .restart local v0       #i:I
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 146
    .end local v0           #i:I
    :cond_23
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method private processAction(ZLandroid/text/Editable;)V
    .registers 10
    .parameter "opening"
    .parameter "output"

    .prologue
    .line 118
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v1

    .line 119
    .local v1, len:I
    if-eqz p1, :cond_1f

    .line 120
    iget-object v4, p0, Lcom/google/android/apps/plus/oob/ActionTagHandler;->mActionIds:Ljava/util/List;

    iget v5, p0, Lcom/google/android/apps/plus/oob/ActionTagHandler;->mIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/apps/plus/oob/ActionTagHandler;->mIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    .local v0, actionId:Ljava/lang/String;
    new-instance v4, Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionId;

    invoke-direct {v4, v0}, Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionId;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x11

    invoke-interface {p2, v4, v1, v1, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 134
    .end local v0           #actionId:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return-void

    .line 124
    :cond_1f
    const-class v4, Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionId;

    invoke-direct {p0, p2, v4}, Lcom/google/android/apps/plus/oob/ActionTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 125
    .local v2, obj:Ljava/lang/Object;
    invoke-interface {p2, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 126
    .local v3, where:I
    invoke-interface {p2, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 127
    if-eq v3, v1, :cond_1e

    move-object v0, v2

    .line 128
    check-cast v0, Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionId;

    .line 129
    .local v0, actionId:Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionId;
    new-instance v4, Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionClickableSpan;

    iget-object v5, v0, Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionId;->mActionId:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionClickableSpan;-><init>(Lcom/google/android/apps/plus/oob/ActionTagHandler;Ljava/lang/String;)V

    const/16 v5, 0x21

    invoke-interface {p2, v4, v3, v1, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1e
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .registers 8
    .parameter "opening"
    .parameter "tag"
    .parameter "output"
    .parameter "xmlReader"

    .prologue
    .line 107
    const-string v0, "action"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 108
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/plus/oob/ActionTagHandler;->processAction(ZLandroid/text/Editable;)V

    .line 112
    :cond_b
    :goto_b
    return-void

    .line 109
    :cond_c
    const-string v0, "html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "body"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 110
    const-string v0, "ActionTagHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected tag \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method
