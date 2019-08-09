package uz.remnant.sweater.repository;

import org.springframework.data.repository.CrudRepository;
import uz.remnant.sweater.domain.Message;

public interface MessageRepository extends CrudRepository<Message, Long> {

}
