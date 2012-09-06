.class public Lcom/google/wireless/gdata/contacts/data/GeoPt;
.super Ljava/lang/Object;
.source "GeoPt.java"


# instance fields
.field private elevation:Ljava/lang/Float;

.field private label:Ljava/lang/String;

.field private latitude:Ljava/lang/Float;

.field private longitude:Ljava/lang/Float;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElevation()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->elevation:Ljava/lang/Float;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitute()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->latitude:Ljava/lang/Float;

    return-object v0
.end method

.method public getLongitute()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->longitude:Ljava/lang/Float;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setElevation(Ljava/lang/Float;)V
    .registers 2
    .parameter "elev"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->elevation:Ljava/lang/Float;

    .line 45
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 2
    .parameter "label"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->label:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setLatitude(Ljava/lang/Float;)V
    .registers 2
    .parameter "lat"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->latitude:Ljava/lang/Float;

    .line 29
    return-void
.end method

.method public setLongitude(Ljava/lang/Float;)V
    .registers 2
    .parameter "lon"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->longitude:Ljava/lang/Float;

    .line 37
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2
    .parameter "time"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->time:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/contacts/data/GeoPt;->toString(Ljava/lang/StringBuffer;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .registers 4
    .parameter "sb"

    .prologue
    .line 56
    const-string v0, "GeoPt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->latitude:Ljava/lang/Float;

    if-eqz v0, :cond_14

    const-string v0, " latitude:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->latitude:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 58
    :cond_14
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->longitude:Ljava/lang/Float;

    if-eqz v0, :cond_23

    const-string v0, " longitude:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->longitude:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 59
    :cond_23
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->elevation:Ljava/lang/Float;

    if-eqz v0, :cond_32

    const-string v0, " elevation:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->elevation:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 60
    :cond_32
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->time:Ljava/lang/String;

    if-eqz v0, :cond_41

    const-string v0, " time:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    :cond_41
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->label:Ljava/lang/String;

    if-eqz v0, :cond_50

    const-string v0, " label:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/GeoPt;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    :cond_50
    return-void
.end method
