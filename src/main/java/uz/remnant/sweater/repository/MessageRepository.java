package uz.remnant.sweater.repository;

import org.springframework.data.repository.CrudRepository;
import uz.remnant.sweater.domain.Message;

import java.util.List;

public interface MessageRepository extends CrudRepository<Message, Long> {
    List<Message> findByTag(String tag);
}
