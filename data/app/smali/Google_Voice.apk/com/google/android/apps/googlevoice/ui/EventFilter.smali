.class public interface abstract Lcom/google/android/apps/googlevoice/ui/EventFilter;
.super Ljava/lang/Object;
.source "EventFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract clearEventDispatcher()V
.end method

.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract filterEvent(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract setEventDispatcher(Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher",
            "<TT;>;)V"
        }
    .end annotation
.end method
