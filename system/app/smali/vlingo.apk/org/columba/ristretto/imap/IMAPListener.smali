.class public interface abstract Lorg/columba/ristretto/imap/IMAPListener;
.super Ljava/lang/Object;
.source "IMAPListener.java"


# virtual methods
.method public abstract alertMessage(Ljava/lang/String;)V
.end method

.method public abstract connectionClosed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract existsChanged(Ljava/lang/String;I)V
.end method

.method public abstract flagsChanged(Ljava/lang/String;Lorg/columba/ristretto/imap/IMAPFlags;)V
.end method

.method public abstract parseError(Ljava/lang/String;)V
.end method

.method public abstract recentChanged(Ljava/lang/String;I)V
.end method

.method public abstract warningMessage(Ljava/lang/String;)V
.end method
