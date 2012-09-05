.class public interface abstract Lorg/snmp4j/util/OIDTextFormat;
.super Ljava/lang/Object;
.source "OIDTextFormat.java"


# virtual methods
.method public abstract format([I)Ljava/lang/String;
.end method

.method public abstract parse(Ljava/lang/String;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
