.class public abstract Lorg/apache/http/params/AbstractHttpParams;
.super Ljava/lang/Object;
.source "AbstractHttpParams.java"

# interfaces
.implements Lorg/apache/http/params/HttpParams;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public getBooleanParameter(Ljava/lang/String;Z)Z
    .registers 4
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lorg/apache/http/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, param:Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 100
    .end local v0           #param:Ljava/lang/Object;
    .end local p2
    :goto_6
    return p2

    .restart local v0       #param:Ljava/lang/Object;
    .restart local p2
    :cond_7
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #param:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_6
.end method

.method public getDoubleParameter(Ljava/lang/String;D)D
    .registers 5
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/http/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, param:Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 87
    .end local v0           #param:Ljava/lang/Object;
    .end local p2
    :goto_6
    return-wide p2

    .restart local v0       #param:Ljava/lang/Object;
    .restart local p2
    :cond_7
    check-cast v0, Ljava/lang/Double;

    .end local v0           #param:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    goto :goto_6
.end method

.method public getIntParameter(Ljava/lang/String;I)I
    .registers 4
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lorg/apache/http/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, param:Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 74
    .end local v0           #param:Ljava/lang/Object;
    .end local p2
    :goto_6
    return p2

    .restart local v0       #param:Ljava/lang/Object;
    .restart local p2
    :cond_7
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #param:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_6
.end method

.method public getLongParameter(Ljava/lang/String;J)J
    .registers 5
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/http/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, param:Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 61
    .end local v0           #param:Ljava/lang/Object;
    .end local p2
    :goto_6
    return-wide p2

    .restart local v0       #param:Ljava/lang/Object;
    .restart local p2
    :cond_7
    check-cast v0, Ljava/lang/Long;

    .end local v0           #param:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_6
.end method

.method public isParameterFalse(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isParameterTrue(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 104
    if-eqz p2, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 105
    return-object p0

    .line 104
    :cond_8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public setDoubleParameter(Ljava/lang/String;D)Lorg/apache/http/params/HttpParams;
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 91
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 92
    return-object p0
.end method

.method public setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 79
    return-object p0
.end method

.method public setLongParameter(Ljava/lang/String;J)Lorg/apache/http/params/HttpParams;
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 66
    return-object p0
.end method
