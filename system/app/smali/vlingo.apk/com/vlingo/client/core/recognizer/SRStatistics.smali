.class public Lcom/vlingo/client/core/recognizer/SRStatistics;
.super Ljava/lang/Object;
.source "SRStatistics.java"


# static fields
.field public static STAT_ACCEPTED_TEXT:Ljava/lang/String;

.field public static STAT_BOR:Ljava/lang/String;

.field public static STAT_CDEL:Ljava/lang/String;

.field public static STAT_CLR:Ljava/lang/String;

.field public static STAT_CREC:Ljava/lang/String;

.field public static STAT_CSEL:Ljava/lang/String;

.field public static STAT_EOD:Ljava/lang/String;

.field public static STAT_EOR:Ljava/lang/String;

.field public static STAT_EOS:Ljava/lang/String;

.field public static STAT_KEY:Ljava/lang/String;

.field public static STAT_NAV:Ljava/lang/String;

.field public static STAT_NBCOR:Ljava/lang/String;

.field public static STAT_PAR:Ljava/lang/String;

.field public static STAT_PDEL:Ljava/lang/String;

.field public static STAT_PNBNAV:Ljava/lang/String;

.field public static STAT_PREC:Ljava/lang/String;

.field public static STAT_PSEL:Ljava/lang/String;

.field public static STAT_RES:Ljava/lang/String;

.field public static STAT_SED:Ljava/lang/String;

.field public static STAT_UTT:Ljava/lang/String;

.field public static STAT_WDEL:Ljava/lang/String;

.field public static STAT_WNAV:Ljava/lang/String;

.field public static STAT_WNBNAV:Ljava/lang/String;

.field public static STAT_WREC:Ljava/lang/String;

.field public static STAT_WSEL:Ljava/lang/String;

.field public static TYPE_ACCEPTED_TEXT:Ljava/lang/String;

.field public static TYPE_REC_TIMING:Ljava/lang/String;

.field public static TYPE_USAGE_COUNTS:Ljava/lang/String;


# instance fields
.field private guttId:Ljava/lang/String;

.field private stats:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, "AcceptedText"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->TYPE_ACCEPTED_TEXT:Ljava/lang/String;

    .line 20
    const-string v0, "RecTiming"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->TYPE_REC_TIMING:Ljava/lang/String;

    .line 21
    const-string v0, "UsageCounts"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->TYPE_USAGE_COUNTS:Ljava/lang/String;

    .line 24
    const-string v0, "ACCEPTED_TEXT"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_ACCEPTED_TEXT:Ljava/lang/String;

    .line 27
    const-string v0, "BOR"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_BOR:Ljava/lang/String;

    .line 28
    const-string v0, "EOS"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_EOS:Ljava/lang/String;

    .line 29
    const-string v0, "EOR"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_EOR:Ljava/lang/String;

    .line 30
    const-string v0, "EOD"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_EOD:Ljava/lang/String;

    .line 31
    const-string v0, "SED"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_SED:Ljava/lang/String;

    .line 32
    const-string v0, "RES"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_RES:Ljava/lang/String;

    .line 33
    const-string v0, "PAR"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_PAR:Ljava/lang/String;

    .line 34
    const-string v0, "UTT"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_UTT:Ljava/lang/String;

    .line 37
    const-string v0, "KEY"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_KEY:Ljava/lang/String;

    .line 38
    const-string v0, "NAV"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_NAV:Ljava/lang/String;

    .line 39
    const-string v0, "WNBNAV"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_WNBNAV:Ljava/lang/String;

    .line 40
    const-string v0, "PNBNAV"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_PNBNAV:Ljava/lang/String;

    .line 41
    const-string v0, "WNAV"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_WNAV:Ljava/lang/String;

    .line 42
    const-string v0, "NBCOR"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_NBCOR:Ljava/lang/String;

    .line 43
    const-string v0, "CDEL"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_CDEL:Ljava/lang/String;

    .line 44
    const-string v0, "WDEL"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_WDEL:Ljava/lang/String;

    .line 45
    const-string v0, "PDEL"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_PDEL:Ljava/lang/String;

    .line 46
    const-string v0, "CLR"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_CLR:Ljava/lang/String;

    .line 47
    const-string v0, "CREC"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_CREC:Ljava/lang/String;

    .line 48
    const-string v0, "WREC"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_WREC:Ljava/lang/String;

    .line 49
    const-string v0, "PREC"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_PREC:Ljava/lang/String;

    .line 50
    const-string v0, "CSEL"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_CSEL:Ljava/lang/String;

    .line 51
    const-string v0, "WSEL"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_WSEL:Ljava/lang/String;

    .line 52
    const-string v0, "PSEL"

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_PSEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "guttId"
    .parameter "type"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/SRStatistics;->stats:Ljava/util/Hashtable;

    .line 59
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/SRStatistics;->guttId:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/vlingo/client/core/recognizer/SRStatistics;->type:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public addStatistic(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/SRStatistics;->stats:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public getGuttId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/SRStatistics;->guttId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatistics()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/SRStatistics;->stats:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/SRStatistics;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getXML()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/recognizer/SRStatistics;->getXML(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getXML(Z)Ljava/lang/String;
    .registers 9
    .parameter "includeRootTag"

    .prologue
    .line 88
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v2, sb:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_2d

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<Stats "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "guttid"

    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/SRStatistics;->getGuttId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vlingo/client/core/http/HttpUtil;->genAtr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_2d
    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/SRStatistics;->getStatistics()Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 95
    .local v0, iter:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_35
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 96
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/SRStatistics;->getStatistics()Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    .local v3, value:Ljava/lang/String;
    const-string v4, "<Stat "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v4, "n"

    invoke-static {v4, v1}, Lcom/vlingo/client/core/http/HttpUtil;->genAtr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v4, "v"

    invoke-static {v4, v3}, Lcom/vlingo/client/core/http/HttpUtil;->genAtr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string v4, "/>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_35

    .line 104
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_68
    if-eqz p1, :cond_6f

    .line 105
    const-string v4, "</Stats>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :cond_6f
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public setStatistics(Ljava/util/Hashtable;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, stats:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/SRStatistics;->stats:Ljava/util/Hashtable;

    .line 81
    return-void
.end method
